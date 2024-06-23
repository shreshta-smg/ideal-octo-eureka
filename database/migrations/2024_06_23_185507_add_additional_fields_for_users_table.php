<?php

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
        Schema::table('users', function (Blueprint $table) {
            $table->string('company_name', 85)->nullable();
            $table->string('company_address')->nullable();
            $table->string('contact_number', 35)->nullable();
            $table->string('bank_account_no', 30)->nullable();
            $table->string('bank_name', 300)->nullable();
            $table->string('branch_name', 250)->nullable();
            $table->string('ifsc_code', 15)->nullable();
            $table->string('upi_id')->nullable();
            $table->string('gstin', 20)->nullable();
            $table->string('aadhar_number', 25)->nullable();
            $table->string('pan_number', 15)->nullable();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function(Blueprint $table) {
            $table->dropColumn('company_name');
            $table->dropColumn('company_address');
            $table->dropColumn('contact_number');
            $table->dropColumn('bank_account_no');
            $table->dropColumn('bank_name');
            $table->dropColumn('branch_name');
            $table->dropColumn('ifsc_code');
            $table->dropColumn('upi_id');
            $table->dropColumn('gstin');
            $table->dropColumn('aadhar_number');
            $table->dropColumn('pan_number');
        });
    }
};
