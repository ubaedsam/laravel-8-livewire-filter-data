<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Keluarga extends Model
{
    use HasFactory;

    protected $table = "keluarga";

    protected $fillable = [
        'name',
        'kk_id',
    ];

    public function kepalaKeluarga()
    {
        $this->belongsTo(KepalaKeluarga::class);
    }
}
