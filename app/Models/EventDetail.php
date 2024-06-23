<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;
use OwenIt\Auditing\Auditable as AuditingAuditable;
use OwenIt\Auditing\Contracts\Auditable;

class EventDetail extends Model implements Auditable
{
    use HasFactory, SoftDeletes, AuditingAuditable;

    protected $table = 'event_details';
    protected $guarded = ['id'];
    protected $auditStrict = true;
    protected $auditThreshold = 10;
    protected $auditEvents = [
        'deleted',
        'restored',
    ];

    /**
     * Get the EventBooking that owns the EventDetail
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function eventBooking(): BelongsTo
    {
        return $this->belongsTo(EventBooking::class);
    }
}
