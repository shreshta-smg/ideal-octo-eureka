<?php

use App\Enums\DetailType;
use App\Models\EventBooking;
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
        Schema::create('event_details', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->softDeletes();
            $table->string('detail_type')->default('Others');
            $table->string('details_value')->nullable();
            $table->string('other_requirements', 512)->nullable();
            $table->decimal('amount')->nullable();
            $table->foreignIdFor(EventBooking::class);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('event_details');
    }
};
