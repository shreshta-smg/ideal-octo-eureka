<?php

namespace App\Models;

use App\Utils\InvoiceUtils;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use OwenIt\Auditing\Auditable as AuditingAuditable;
use OwenIt\Auditing\Contracts\Auditable;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class EventBooking extends Model implements Auditable, HasMedia
{
    use HasFactory, SoftDeletes, AuditingAuditable, InteractsWithMedia;

    protected $table = 'event_bookings';
    protected $guarded = ['id'];
    protected $auditStrict = true;
    protected $auditThreshold = 10;
    protected $auditEvents = [
        'deleted',
        'restored',
    ];

    protected static function boot() {
        parent::boot();
        static::creating(function ($order) {
            $order->invoice_number = InvoiceUtils::generateInvoiceNumber();
        });
    }

    /**
     * Get the EventCustomer that owns the EventBooking
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function eventCustomer(): BelongsTo
    {
        return $this->belongsTo(EventCustomer::class);
    }

    /**
     * Get the RegisteredUser that owns the EventBooking
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function registeredUser(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Get all of the EventDetails for the EventBooking
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function eventDetails(): HasMany
    {
        return $this->hasMany(EventDetail::class);
    }
}
