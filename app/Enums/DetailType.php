<?php
namespace App\Enums;
use Filament\Support\Contracts\HasLabel;

enum DetailType: string implements HasLabel {
    case Menu = 'Menu';
    case Material = 'Material';
    case Balance = 'Balance';
    case Rent = 'Rent';
    case Tax = 'Tax';
    case BookedHall = 'BookedHall';
    case GeneratedInvoiceUrl = 'GeneratedInvoiceUrl';
    case CalculatedTotalAmount = 'UpdatedTotalAmount';
    case CalculatedBalance = 'UpdatedBalance';
    case Others = 'Others';

    public function getLabel(): ?string
    {
        return $this->name;
    }
}


