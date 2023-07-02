<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employees extends Model
{
    use HasFactory;

    protected $table = "employee"; // menghubungkan ke dalam tabel employee

    public function jabatan()
    {
        return $this->belongsTo(Jabatan::class);
    }

    public function team()
    {
        return $this->belongsTo(Team::class);
    }

    public function scopeSearch($query, $term){
        $term = "%$term%";
        $query->where(function($query) use ($term){
            $query->where('usia','like', $term)
            ->orWhere('nama','like',$term);
        });

    }

}
