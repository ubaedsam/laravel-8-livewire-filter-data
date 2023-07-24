<?php

namespace App\Http\Livewire;

use App\Models\Keluarga;
use App\Models\KepalaKeluarga;
use Livewire\Component;
use Illuminate\Support\Facades\Validator;

class AddKeluarga extends Component
{
    // State ini adalah tempat data yang ingin disimpan
    public $state = [];

    public function createKeluarga()
    {
        // Validation
        Validator::make($this->state, [
            'kk_id' => 'required',
            'name' => 'required',
        ],[
            'kk_id.required' => 'Data kepala keluarga wajib di isi!',
            'name.required' => 'Data nama keluarga wajib di isi!'
        ])->validate();
        
        Keluarga::create($this->state);

        return redirect('/kepala-keluarga')->with('toast_success','Data keluarga berhasil disimpan!');
    }
    
    public function render()
    {
        $kkeluargas = KepalaKeluarga::all();

        return view('livewire.add-keluarga',['kkeluargas'=>$kkeluargas]);
    }
}
