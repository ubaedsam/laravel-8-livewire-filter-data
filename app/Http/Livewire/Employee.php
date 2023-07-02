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

    public function hapusEmployee($id)
    {
        $employee = Employees::find($id);
        $employee->delete();
        return redirect('/all-employee')->with('toast_success','Data employee karyawan berhasil di hapus!');
    }

    // public function mount()
    // {
    //     $this->employees = Employees::all();
    // }

    // public function updated()
    // {
    //     $employee = Employees::query();

    //     $searchTerm = '%'.$this->searchTerm . '%'; // untuk fitur search

    //     $jabatan = '%'.$this->jabatan . '%';

    //     if(!empty($this->searchTerm))
    //     {
    //         $employee = Employees::where('nama','LIKE',$searchTerm) // mencari data dari firstname
    //         ->orWhere('usia','LIKE',$searchTerm) // mencari data dari lastname
    //         ->orWhere('tanggal_lahir','LIKE',$searchTerm); // mencari data dari email
    //     }

    //     if(!empty($this->jabatan))
    //     {
    //         $employee = Employees::where('jabatan_id','LIKE',$jabatan);
    //     }

    //     if(!empty($this->from) && !empty($this->to))
    //     {
    //         $employee = $employee->whereBetween('created_at',[$this->from.'00:00:00', $this->to.'23:59:59']);
    //     }else if(!empty($this->from))
    //     {
    //         $employee = $employee->whereDate('created_at','>=',$this->from);
    //     }else if(!empty($this->to))
    //     {
    //         $employee = $employee->whereDate('created_at','<=',$this->to);
    //     }

    //     $this->employees = $employee->get();
    // }

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
            ->search(trim($this->search))
            ->orderBy('id', $this->by)
            ->paginate($this->perPage)
            ]
        )->layout('layouts.app');
    }
}
