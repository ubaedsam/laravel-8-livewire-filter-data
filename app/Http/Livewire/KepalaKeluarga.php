<?php

namespace App\Http\Livewire;

use App\Models\Keluarga;
use App\Models\KepalaKeluarga as ModelsKepalaKeluarga;
use Livewire\Component;

class KepalaKeluarga extends Component
{
    // menghapus data kepala keluarga berdasarkan idnya
    public function deleteKepalaKeluarga($id)
    {
        $kkeluarga = ModelsKepalaKeluarga::find($id);
        $kkeluarga->delete();
        return redirect('/kepala-keluarga')->with('toast_success','Data kepala keluarga berhasil di hapus!');
    }

    // menghapus data keluarga berdasarkan idnya
    public function deleteKeluarga($id)
    {
        $keluarga = Keluarga::find($id);
        $keluarga->delete();
        return redirect('/kepala-keluarga')->with('toast_success','Data keluarga berhasil di hapus!');
    }

    public function render()
    {
        $kkeluargas = ModelsKepalaKeluarga::paginate(5);
        return view('livewire.kepala-keluarga', ['kkeluargas' => $kkeluargas]);
    }
}
