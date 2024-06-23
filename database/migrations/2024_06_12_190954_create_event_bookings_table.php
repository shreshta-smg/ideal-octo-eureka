<?php

use App\Enums\EventType;
use App\Models\EventCustomer;
use App\Models\User;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('event_bookings', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->softDeletes();
            $table->foreignIdFor(EventCustomer::class);
            $table->foreignIdFor(User::class);
            $table->string('invoice_number')->unique();
            $table->string('name_of_the_event', 144);
            $table->string('type_of_event')->default(EventType::NotSet->name);
            $table->datetime('start_date')->nullable();
            $table->dateTime('end_date')->nullable();
            $table->decimal('total_amount')->default(0);
            $table->decimal('amount_paid')->default(0);
            $table->unsignedSmallInteger('no_of_people_expected')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('event_bookings');
    }
};
