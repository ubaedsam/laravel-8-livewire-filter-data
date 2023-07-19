<?php

namespace App\Http\Livewire;

use App\Models\Jabatan;
use Livewire\Component;
use App\Models\Employees;
use App\Models\Team;
use Illuminate\Http\Request;

class Employee extends Component
{
    // Untuk fitur searching
    // public $employees;
    // public $nama;
    public $from;
    public $to;
    // public $searchTerm;
    // public $jabatan;

    public $jabatan = null;
    public $team = null;
    public $by = 'asc';
    public $perPage = 5;
    public $search;
    public $min_usia = 0;
    public $max_usia = 20;

    public function hapusEmployee($id)
    {
        $employee = Employees::find($id);
        $employee->delete();
        return redirect('/all-employee')->with('toast_success','Data employee karyawan berhasil di hapus!');
    }

    public function render(Request $request)
    {
        $jabatans = Jabatan::all();
        $teams = Team::all();

        return view('livewire.employee',[
            'jabatans'=>$jabatans,
            'teams'=>$teams,
            'employees'=>Employees::when($this->jabatan, function($query){
                $query->where('jabatan_id', $this->jabatan);
            })
            ->when($this->team, function($query){
                $query->where('team_id', $this->team);
            })
            ->whereBetween('usia',[$this->min_usia,$this->max_usia])
            ->search(trim($this->search))
            ->orderBy('id', $this->by)
            ->paginate($this->perPage)
            ]
        )->layout('layouts.app');
    }
}
