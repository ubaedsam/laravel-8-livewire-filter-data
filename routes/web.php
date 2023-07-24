<?php

use App\Http\Livewire\Employee;
use App\Http\Livewire\AddEmployee;
use App\Http\Livewire\AddKeluarga;
use App\Http\Livewire\AddKepalaKeluarga;
use App\Http\Livewire\DetailEmployee;
use App\Http\Livewire\EditEmployee;
use App\Http\Livewire\EditKeluarga;
use App\Http\Livewire\EditKepalaKeluarga;
use App\Http\Livewire\KepalaKeluarga;
use App\Http\Livewire\ListProduct;
use App\Http\Livewire\ProductFilter;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/all-product', ProductFilter::class)->name('product');

Route::get('/products', ListProduct::class)->name('products');

Route::get('/kepala-keluarga', KepalaKeluarga::class)->name('kepalakeluarga');

Route::get('/kepala-keluarga/add', AddKepalaKeluarga::class)->name('kepala-keluarga.add');

Route::get('/kepala-keluarga/{kkeluarga}/edit', EditKepalaKeluarga::class)->name('kepala-keluarga.edit');

Route::get('/keluarga/add', AddKeluarga::class)->name('keluarga.add');

Route::get('/keluarga/edit/{keluarga_id}', EditKeluarga::class)->name('keluarga.edit');

Route::get('/all-employee', Employee::class)->name('employee');

Route::get('/all-employee/add', AddEmployee::class)->name('all-employee.add');

Route::get('/all-employee/edit/{employee_id}', EditEmployee::class)->name('all-employee.edit');

Route::get('/all-employee/detail/{employee_id}', DetailEmployee::class)->name('all-employee.detail');