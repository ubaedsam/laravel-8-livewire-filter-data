<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KepalaKeluarga extends Model
{
    use HasFactory;

    // menghubungkan ke dalam tabel kepala_keluarga
    protected $table = "kepala_keluarga";

    protected $fillable = [
        'name'
    ];

    // menghubungkan ke dalam tabel keluarga pada file model keluarga (relasi antar tabel)
    // mengambil banyak data
    public function Keluarga()
    {
        return $this->hasMany(Keluarga::class,'kk_id');
    }
}
