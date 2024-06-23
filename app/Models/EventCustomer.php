<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use OwenIt\Auditing\Auditable as AuditingAuditable;
use OwenIt\Auditing\Contracts\Auditable;

class EventCustomer extends Model implements Auditable
{
    use HasFactory, SoftDeletes, AuditingAuditable;
    protected $table = 'event_customers';
    protected $guarded = ['id'];
    protected $auditStrict = true;
    protected $auditThreshold = 10;
    protected $auditEvents = [
        'deleted',
        'restored',
    ];

    /**
     * Get all of the EventBooking for the EventCustomer
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function eventBookings(): HasMany
    {
        return $this->hasMany(EventBooking::class);
    }
}
