<?php

namespace App\Http\Livewire;

use App\Models\KepalaKeluarga;
use Livewire\Component;
use Illuminate\Support\Facades\Validator;

class EditKepalaKeluarga extends Component
{
    public $state = [];

    public $kkeluarga;

    // Load data appointment yangg ingin diubah
    public function mount(KepalaKeluarga $kkeluarga)
    {
        $this->state = $kkeluarga->toArray();

        $this->kkeluarga = $kkeluarga;
    }

    public function updateKepalaKeluarga()
    {
        // Validation
        Validator::make($this->state, [
            'name' => 'required'
        ],[
            'name.required' => 'Data nama wajib di isi!'
        ])->validate();
        
        $this->kkeluarga->update($this->state);

        return redirect('/kepala-keluarga')->with('toast_success','Data kepala keluarga berhasil diubah!');
    }

    public function render()
    {
        return view('livewire.edit-kepala-keluarga');
    }
}
