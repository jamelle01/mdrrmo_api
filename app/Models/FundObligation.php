<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FundObligation extends Model
{
    // use HasFactory;
    protected $fillable = [
        'Fund_Obligation_Key',
        'Obligation_Date',
        'Fund_Obligated',
        'Project_Key',
    ];
}
