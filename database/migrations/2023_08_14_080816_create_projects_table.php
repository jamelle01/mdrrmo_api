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
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->string('BAC_Value', 15)->unique()->nullable();
            $table->string('Project_Desc', 200)->nullable();
            $table->double('Project_Allocation')->nullable();
            $table->string('Project_Key', 15)->unique()->nullable();
            $table->string('Created_By', 30)->nullable();
            $table->date('Date_Created')->default(DB::raw('CURRENT_DATE'));
            $table->double('Project_Fund_Obligated')->nullable();
            $table->double('Project_Balance')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('projects');
    }
};
