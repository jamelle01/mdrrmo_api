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
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->string('TTN_Value', 15)->unique()->nullable();
            $table->string('Transaction_Key', 15)->unique()->nullable();
            $table->string('Transaction_Subject', 200)->nullable();
            $table->double('Transaction_Allocation')->nullable();
            $table->string('Created_By', 30)->nullable();
            $table->date('Date_Created')->default(DB::raw('CURRENT_DATE'));
            $table->string('Project_Key', 15)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
