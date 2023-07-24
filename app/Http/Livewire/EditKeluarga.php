<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Keluarga;
use App\Models\KepalaKeluarga;
use Illuminate\Support\Facades\Validator;

class EditKeluarga extends Component
{
    public $state = [];

    public $keluarga_id;

    // Load data appointment yangg ingin diubah
    public function mount(Keluarga $keluarga_id)
    {
        $this->state = $keluarga_id->toArray();

        $this->keluarga_id = $keluarga_id;
    }

    public function updateKeluarga()
    {
        // Validation
        Validator::make($this->state, [
            'name' => 'required',
            'kk_id'=>'required',
        ],[
            'name.required' => 'Data nama wajib di isi!'
        ])->validate();
        
        $this->keluarga_id->update($this->state);

        return redirect('/kepala-keluarga')->with('toast_success','Data keluarga berhasil diubah!');
    }

    public function render()
    {
        $kkeluargas = KepalaKeluarga::all();

        return view('livewire.edit-keluarga',['kkeluargas'=>$kkeluargas]);
    }
}
