<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/login', [AuthController::class, 'login'])->name('login');
Route::post('/loginpost', [AuthController::class, 'loginpost'])->name('loginpost');

Route::get('/register', [AuthController::class, 'register'])->name('register');
Route::post('/registerpost', [AuthController::class, 'registerpost'])->name('registerpost');

Route::get('/logout', [AuthController::class, 'logout'])->name('logout');

Route::group(['prefix' => 'admin', 'middleware' => ['auth'], 'as' => 'admin.'], function () {

    Route::get('/', [HomeController::class, 'dashboard'])->name('dashboard');

    Route::get('/user', [HomeController::class, 'user'])->name('user');
    Route::get('/useradd', [HomeController::class, 'useradd'])->name('useradd');
    Route::post('/userpost', [HomeController::class, 'userpost'])->name('userpost');

    Route::get('/useredit/{id}', [HomeController::class, 'useredit'])->name('useredit');
    Route::put('/userupdate/{id}', [HomeController::class, 'userupdate'])->name('userupdate');

    Route::delete('/userdelete/{id}', [HomeController::class, 'userdelete'])->name('userdelete');

    Route::get('/client', [ClientController::class, 'client'])->name('client');
    Route::get('/server', [ClientController::class, 'server'])->name('server');
});

