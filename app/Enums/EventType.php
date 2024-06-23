<?php
namespace App\Enums;
use Filament\Support\Contracts\HasLabel;
use Illuminate\Support\Str;

enum EventType: string implements HasLabel {
    case NotSet = 'NotSet';
    case Marriage = 'Marriage';
    case Birthday = 'Birthday';
    case Others = 'Others';

    public function getLabel(): ?string
    {
        return $this->name;
    }
}

