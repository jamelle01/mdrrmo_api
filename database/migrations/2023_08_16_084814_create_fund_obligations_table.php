<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('fund_obligations', function (Blueprint $table) {
            $table->id();
            $table->string('Project_Key', 15)->nullable();
            $table->date('Obligation_Date')->nullable();;
            $table->double('Fund_Obligated')->nullable();
            $table->string('Fund_Obligation_Key', 15)->unique()->nullable(); $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('fund_obligations');
    }
};
