<?php
namespace App\Enums;
use Filament\Support\Contracts\HasLabel;
use Illuminate\Support\Str;


enum MenuType: string implements HasLabel {
    case NotSet = 'NotSet';
    case Breakfast = 'Breakfast';
    case Lunch = 'Lunch';
    case Dinner = 'Dinner';
    case Coffee = 'Coffee';
    case Tea = 'Tea';
    case Others = 'Others';

    public function getLabel(): ?string
    {
        return $this->name;
    }
}
