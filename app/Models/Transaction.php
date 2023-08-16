<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    // use HasFactory;
    protected $fillable = [
        'TTN_Value',
        'Transaction_Key',
        'Transaction_Subject',
        'Transaction_Allocation',
        'Created_By',
        'Project_Key',
    ];
}
