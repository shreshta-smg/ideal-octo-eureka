<?php
namespace App\Utils;

use Illuminate\Support\Facades\DB;

class InvoiceUtils {
    public static function generateInvoiceNumber(): string {
        $currentYear = date('Y');
        $lastOrder = DB::table('event_bookings')
        ->whereYear('created_at', $currentYear)
        ->orderBy('id', 'desc')
        ->first();
        $invoiceNumber = $lastOrder->invoice_number ?? 0;
        $ivr = explode('-', $invoiceNumber) ?? 0;
        $orderNumber = $lastOrder ? intval($ivr[1] ?? 0) + 1 : 1;
        info("ORDERNUMBER: $orderNumber");
        $formattedOrderNumber = sprintf($currentYear . '-%04d', $orderNumber);
        return $formattedOrderNumber;
    }

    public static function taxCalcualtion(float $taxRate, float $totalTaxableAmount) {
        return ($taxRate / 100) * $totalTaxableAmount;
    }
}
