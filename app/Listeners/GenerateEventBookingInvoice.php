<?php

namespace App\Listeners;

use App\Enums\DetailType;
use App\Events\EventBookingInvoiceGenerated;
use App\Models\EventBooking;
use App\Models\EventCustomer;
use App\Models\EventDetail;
use App\Models\User;
use Carbon\Carbon;
use Exception;
use Filament\Notifications\Notification;
use LaravelDaily\Invoices\Classes\InvoiceItem;
use LaravelDaily\Invoices\Classes\Party;
use LaravelDaily\Invoices\Facades\Invoice;
use Illuminate\Support\Str;

use function Laravel\Prompts\warning;

class GenerateEventBookingInvoice
{

    /**
     * Handle the event.
     */
    public function handle(EventBookingInvoiceGenerated $event): void
    {
        $authUser = auth()->user();
        $bookedEvent = $event->eventBooking;
        $eventCustomer = $bookedEvent->eventCustomer()->first();
        $eventDetails = $bookedEvent->eventDetails()->get();
        $numberOfDays = ceil(Carbon::parse($bookedEvent->start_date)->diffInDays(Carbon::parse($bookedEvent->end_date)));
        $calculatedTAQuery = $eventDetails->firstWhere('detail_type', '==', DetailType::CalculatedTotalAmount->value);
        $ctaForEvent = floatval($calculatedTAQuery->amount) ?? 0;
        $generatedUrlExists = $eventDetails->firstWhere('detail_type', '==', DetailType::GeneratedInvoiceUrl->name);
        if ($ctaForEvent == 0) {
            warning('Please update the total amount!');
            throw new Exception("Please update the total amount!");
        }

        if (!is_null($generatedUrlExists)) {
            warning('Invoice Already Exists!');
            throw new Exception("Invoice Already Exists! for detailId: {$generatedUrlExists->id}");
        }
        $generatedInvoiceForEvent = $this->generateInvoice(
            $bookedEvent,
            $numberOfDays,
            $eventDetails,
            $this->createClient($authUser),
            $this->createCustomer($authUser, $eventCustomer, $bookedEvent)
        )->stream();
        $bookedEvent->addMedia($generatedInvoiceForEvent)->toMediaCollection('invoices');
        $generatedInvoiceUrl = $bookedEvent->getMedia('invoices')[0]->getFullUrl();
        EventDetail::create([
            'detail_type' => DetailType::GeneratedInvoiceUrl,
            'event_booking_id' => $bookedEvent->id,
            'details_value' => $generatedInvoiceUrl,
        ]);
        info('Generated Invoice! for order: ' . $bookedEvent->invoice_number);
    }

    private function createClient(User $user)
    {
        return new Party([
            'name'          => $user->name,
            'phone'         => $user->contact_number,
            'company' => $user->company_name,
            'address' => $user->company_address
        ]);
    }

    private function generateCompanyAbbv(User $registeredUser)
    {
        $cn = explode(" ", $registeredUser->company_name);
        $cnl = count($cn);
        $cn1 = $cn[0];
        $cn2 = $cn[$cnl - 1];
        return $cn1[0] . '' . $cn2[0];
    }

    private function createCustomer(User $registeredUser, EventCustomer $eventCustomer, EventBooking $eventBooking)
    {
        $companyAbbv = $this->generateCompanyAbbv($registeredUser);
        return new Party([
            'name'          => $eventCustomer->full_name,
            'address'       => $eventCustomer->address,
            'phone' => $eventCustomer->contact_number,
            'custom_fields' => [
                'order number' => $companyAbbv . '_' . $eventBooking->invoice_number,
            ],
        ]);
    }

    private function generateInvoice(
        EventBooking $eventBooking,
        $noOfDays,
        $eventDetails,
        $client,
        $customer
    ) {
        $filteredInvoiceItems = $eventDetails->filter(function (EventDetail $eventDetail) {
            return in_array($eventDetail->detail_type, [
                DetailType::Material->name,
            ]);
        });
        $filteredMenuItems = $eventDetails->filter(function (EventDetail $eventDetail) {
            return in_array($eventDetail->detail_type, [
                DetailType::Menu->name,
            ]);
        })->map(fn (EventDetail $fmi) => $fmi->details_value);
        $invoiceItems = [];
        $notes = [
            'Event Start Date: ' . $eventBooking->start_date,
            'Event End Date: ' . $eventBooking->end_date,
            'Menu: ' . implode('<br>', $filteredMenuItems->all()),
        ];
        $notes = implode("<br>", $notes);

        if ($filteredInvoiceItems->count() == 0) {
            $invoiceItems = [InvoiceItem::make("Service")->description("Incl. Total Amount")
                ->pricePerUnit(floatval(0))
                ->quantity($noOfDays)];
        } else {
            $invoiceItems = $filteredInvoiceItems->map(function (EventDetail $eventDetail) use ($noOfDays) {
                return InvoiceItem::make($eventDetail->detail_type)->description($eventDetail->details_value)
                    ->pricePerUnit(floatval($eventDetail->amount))
                    ->quantity($noOfDays);
            },);
        }
        $tax = $eventDetails->firstWhere('detail_type', '==', DetailType::Tax->name);
        $taxRate = $tax ? $tax->amount : 0;
        $totalAmount = $eventDetails->firstWhere('detail_type', '==', DetailType::CalculatedTotalAmount->value);
        $totalAmountIncTaxes = $totalAmount->amount;
        $taxAmt = $eventBooking->total_amount * ($taxRate / 100);
        $totalTaxableAmount = $totalAmountIncTaxes - $taxAmt;
        $generatedInvoice = Invoice::make('bill')
            ->template('shubha')
            ->series('SH')
            ->status('due')
            ->sequence(1)
            ->serialNumberFormat('{SEQUENCE}/{SERIES}')
            ->seller($client)
            ->buyer($customer)
            ->taxRate($taxAmt)
            ->date(now())
            ->dateFormat('d/m/Y')
            ->payUntilDays(3)
            ->currencySymbol('₹')
            ->currencyCode('INR')
            ->currencyFraction('Ps.')
            ->currencyFormat('{SYMBOL}{VALUE}')
            ->currencyThousandsSeparator(',')
            ->currencyDecimalPoint('.')
            ->taxableAmount($totalTaxableAmount)
            ->totalAmount($totalAmountIncTaxes)
            ->filename(str()->slug($client->name) . '_' . str()->slug($customer->name))
            ->addItems($invoiceItems)
            ->notes($notes)
            ->logo(public_path('assets/logo/shreshtasmg.png'))
            ->save('public');
        return $generatedInvoice;
    }
}
