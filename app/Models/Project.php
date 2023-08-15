<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    protected $fillable = [
        'BAC_Value',
        'Project_Key',
        'Project_Desc',
        'Project_Allocation',
        'Created_By',
        'Date_Created',
        'Project_Fund_Obligated',
        'Project_Balance',
    ];

    // protected static function booted()
    // {
    //     static::creating(function ($project) {
    //         $lastId = DB::table('UserTest')->latest('id')->first();
    //         $project->BAC_Value = 'bac_' . ++$lastId;
    //     });
    // }
}
