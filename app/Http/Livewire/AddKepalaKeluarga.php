<?php

namespace App\Http\Livewire;

use App\Models\KepalaKeluarga;
use Livewire\Component;
use Illuminate\Support\Facades\Validator;

class AddKepalaKeluarga extends Component
{
    // State ini adalah tempat data yang ingin disimpan
    public $state = [];

    public function createKepalaKeluarga()
    {
        // Validation
        Validator::make($this->state, [
            'name' => 'required'
        ],[
            'name.required' => 'Data nama wajib di isi!'
        ])->validate();
        
        KepalaKeluarga::create($this->state);

        return redirect('/kepala-keluarga')->with('toast_success','Data kepala keluarga berhasil disimpan!');
    }

    public function render()
    {
        return view('livewire.add-kepala-keluarga');
    }
}
