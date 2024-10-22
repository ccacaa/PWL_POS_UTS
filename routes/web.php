<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\LevelController;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WelcomeController;
use App\Http\Controllers\StokController;
use App\Http\Controllers\TransaksiController;
use App\Http\Controllers\LandingPageController;
use App\Http\Controllers\ProfileController;

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::pattern('id', '[0-9]+');

Route::get('login', [AuthController::class, 'login'])->name('login');
Route::post('login', [AuthController::class, 'postlogin']);
Route::get('register', [RegistrationController::class, 'registration'])->name('register');
Route::post('register', [RegistrationController::class, 'store']);
Route::get('logout', [AuthController::class, 'logout']);
// routes/web.php
Route::get('/landing', [LandingPageController::class, 'index']);
Route::post('logout', [AuthController::class, 'logout'])->name('logout');

    // Route untuk menampilkan profil
    Route::get('/profile', [UserController::class, 'showProfile'])->name('profile');
    // Route untuk update profil (termasuk upload gambar)
    Route::post('/profile/upload', [UserController::class, 'uploadProfilePicture'])->name('profile.upload');

Route::middleware(['auth'])->group(function () {
    Route::get('/', [WelcomeController::class, 'index']);
    //masukkan
    Route::middleware(['authorize:ADM'])->group(function () {
        Route::group(['prefix' => 'user'], function () {
            Route::get('/', [UserController::class, 'index']);
            Route::post('/list', [UserController::class, 'list']);
            Route::get('/create', [UserController::class, 'create']);
            Route::post('/', [UserController::class, 'store']);
            Route::get('/create_ajax', [UserController::class, 'create_ajax']);
            Route::post('/ajax', [UserController::class, 'store_ajax']);
            Route::get('/{id}', [UserController::class, 'show']);
            Route::get('/{id}/edit', [UserController::class, 'edit']);
            Route::put('/{id}', [UserController::class, 'update']);
            Route::get('/{id}/show_ajax', [UserController::class, 'show_ajax']);
            Route::put('/show', [UserController::class, 'show']);
            Route::get('/{id}/edit_ajax', [UserController::class, 'edit_ajax']);
            Route::put('/{id}/update_ajax', [UserController::class, 'update_ajax']);
            Route::get('/{id}/delete_ajax', [UserController::class, 'confirm_ajax']);
            Route::get('/export_pdf', [UserController::class, 'export_pdf']);
            Route::delete('/{id}/delete_ajax', [UserController::class, 'delete_ajax']);
            Route::delete('/{id}', [UserController::class, 'destroy']);

        });
    });

    Route::middleware(['authorize:ADM'])->group(function () {
        Route::group(['prefix' => 'level'], function () {
            Route::get('/', [LevelController::class, 'index']);
            Route::post('/list', [LevelController::class, 'list']);
            Route::get('/create', [LevelController::class, 'create']);
            Route::post('/', [LevelController::class, 'store']);
            Route::get('/create_ajax', [LevelController::class, 'create_ajax']);
            Route::post('/ajax', [LevelController::class, 'store_ajax']);
            Route::get('/{id}', [LevelController::class, 'show']);
            Route::get('/{id}/edit', [LevelController::class, 'edit']);
            Route::put('/{id}', [LevelController::class, 'update']); 
            Route::get('/{id}/show_ajax', [LevelController::class, 'show_ajax']);           
            Route::put('/show', [LevelController::class, 'show']);
            Route::get('/{id}/edit_ajax', [LevelController::class, 'edit_ajax']);
            Route::put('/{id}/update_ajax', [LevelController::class, 'update_ajax']);
            Route::get('/{id}/delete_ajax', [LevelController::class, 'confirm_ajax']);
            Route::get('/export_pdf', [LevelController::class, 'export_pdf']);
            Route::delete('/{id}/delete_ajax', [LevelController::class, 'delete_ajax']);
            Route::delete('/{id}', [LevelController::class, 'destroy']);
            
        });
    });

    Route::middleware(['authorize:ADM,MNG,STF'])->group(function () {
        Route::group(['prefix' => 'barang'], function () {
            Route::get('/', [BarangController::class, 'index']);
            Route::post('/list', [BarangController::class, 'list']);
            Route::get('/create', [BarangController::class, 'create']);
            Route::post('/', [BarangController::class, 'store']);
            Route::get('/create_ajax', [BarangController::class, 'create_ajax']);
            Route::post('/ajax', [BarangController::class, 'store_ajax']);
            Route::get('/{id}', [BarangController::class, 'show']);
            Route::get('/{id}/edit', [BarangController::class, 'edit']);
            Route::put('/{id}', [BarangController::class, 'update']);
            Route::get('/{id}/show_ajax', [BarangController::class, 'show_ajax']);
            Route::put('/show', [BarangController::class, 'show']);
            Route::get('/{id}/edit_ajax', [BarangController::class, 'edit_ajax']);
            Route::put('/{id}/update_ajax', [BarangController::class, 'update_ajax']);
            Route::get('/{id}/delete_ajax', [BarangController::class, 'confirm_ajax']);
            Route::delete('/{id}/delete_ajax', [BarangController::class, 'delete_ajax']);
            Route::get('/import', [BarangController::class, 'import']);                         //menampilkan form impor data barang
            Route::post('/import_ajax', [BarangController::class, 'import_ajax']);              //mengimpor file excel ke daftar data barang
            Route::get('/export_excel', [BarangController::class, 'export_excel']); //export exel
            Route::get('/export_pdf', [BarangController::class, 'export_pdf']);//export pdf
            Route::delete('/{id}', [BarangController::class, 'destroy']);
        });
    });

    Route::middleware(['authorize:ADM,MNG,STF'])->group(function () {
        Route::group(['prefix' => 'kategori'], function () {
            Route::get('/', [KategoriController::class, 'index']);
            Route::post('/list', [KategoriController::class, 'list']);
            Route::get('/create', [KategoriController::class, 'create']);
            Route::post('/', [KategoriController::class, 'store']);
            Route::get('/create_ajax', [KategoriController::class, 'create_ajax']);
            Route::post('/ajax', [KategoriController::class, 'store_ajax']);
            Route::get('/{id}', [KategoriController::class, 'show']);
            Route::get('/{id}/edit', [KategoriController::class, 'edit']);
            Route::put('/{id}', [KategoriController::class, 'update']);  
            Route::get('/{id}/show_ajax', [KategoriController::class, 'show_ajax']);          
            Route::put('/show', [KategoriController::class, 'show']);
            Route::get('/{id}/edit_ajax', [KategoriController::class, 'edit_ajax']);
            Route::put('/{id}/update_ajax', [KategoriController::class, 'update_ajax']);
            Route::get('/{id}/delete_ajax', [KategoriController::class, 'confirm_ajax']);
            Route::get('/export_pdf', [KategoriController::class, 'export_pdf']);
            Route::delete('/{id}/delete_ajax', [KategoriController::class, 'delete_ajax']);
            Route::delete('/{id}', [KategoriController::class, 'destroy']);
        });

    });

    Route::middleware(['authorize:ADM,MNG,STF'])->group(function () {
        Route::group(['prefix' => 'supplier'], function () {
            Route::get('/', [SupplierController::class, 'index']);
            Route::post('/list', [SupplierController::class, 'list']);
            Route::get('/create', [SupplierController::class, 'create']);
            Route::post('/', [SupplierController::class, 'store']);
            Route::get('/create_ajax', [SupplierController::class, 'create_ajax']);
            Route::post('/ajax', [SupplierController::class, 'store_ajax']);
            Route::get('/{id}', [SupplierController::class, 'show']);
            Route::get('/{id}/edit', [SupplierController::class, 'edit']);
            Route::put('/{id}', [SupplierController::class, 'update']);
            Route::get('/{id}/show_ajax', [SupplierController::class, 'show_ajax']);
            Route::put('/show', [SupplierController::class, 'show']);
            Route::get('/{id}/edit_ajax', [SupplierController::class, 'edit_ajax']);
            Route::put('/{id}/update_ajax', [SupplierController::class, 'update_ajax']);
            Route::get('/{id}/delete_ajax', [SupplierController::class, 'confirm_ajax']);
            Route::get('/export_pdf', [SupplierController::class, 'export_pdf']);
            Route::delete('/{id}/delete_ajax', [SupplierController::class, 'delete_ajax']);
            Route::delete('/{id}', [SupplierController::class, 'destroy']);
        });

    });

    
    Route::middleware(['authorize:ADM,MNG,STF'])->group(function () {
        Route::group(['prefix' => 'stok'], function () {
            Route::get('/', [StokController::class, 'index']);              // menampilkan halaman awal stok
            Route::post('/list', [StokController::class, 'list']);          // menampilkan data stok dalam bentuk json untuk datatables
            Route::get('/create', [StokController::class, 'create']);       // menampilkan halaman form tambah stok
            Route::get('/create_ajax', [StokController::class, 'create_ajax']); // Menampilkan halaman form tambah supplier Ajax
            Route::post('/ajax', [StokController::class, 'store_ajax']); // Menyimpan data stok baru Ajax
            Route::post('/', [StokController::class, 'store']);             // menyimpan data stok baru
            Route::get('/{id}', [StokController::class, 'show']);           // menampilkan detail stok
            Route::get('/{id}/edit', [StokController::class, 'edit']);     // menampilkan halaman form edit stok
            Route::put('/{id}', [StokController::class, 'update']);         // menyiapkan perubahan data stok
            Route::get('/{id}/show_ajax', [StokController::class, 'show_ajax']);
            Route::get('/{id}/show', [StokController::class, 'show']);
            Route::get('/{id}/edit_ajax', [StokController::class, 'edit_ajax']); // Menampilkan halaman form edit stok Ajax 
            Route::put('/{id}/update_ajax', [StokController::class, 'update_ajax']); // Menyimpan perubahan data stok Ajax
            Route::get('/{id}/delete_ajax', [StokController::class, 'confirm_ajax']); // Untuk tampilkan form confirm delete stok Ajax
            Route::get('/export_pdf', [StokController::class, 'export_pdf']);
            Route::delete('/{id}/delete_ajax', [StokController::class, 'delete_ajax']); // Untuk hapus data stok Ajax
            Route::delete('/{id}', [StokController::class, 'destroy']);     // menghapus data stok
            

        });
    });

    Route::middleware(['authorize:ADM,MNG,STF'])->group(function () {
        Route::group(['prefix' => 'transaksi'], function () {
            Route::get('/', [TransaksiController::class, 'index']);
            Route::post('/list', [TransaksiController::class, 'list']);
            Route::get('/create', [TransaksiController::class, 'create']);
            Route::post('/', [TransaksiController::class, 'store']);
            Route::get('/create_ajax', [TransaksiController::class, 'create_ajax']);
            Route::post('/ajax', [TransaksiController::class, 'store_ajax']);
            Route::get('/{id}', [TransaksiController::class, 'show']);
            Route::get('/{id}/edit', [TransaksiController::class, 'edit']);
            Route::put('/{id}', [TransaksiController::class, 'update']);
            Route::get('/{id}/show_ajax', [TransaksiController::class, 'show_ajax']);
            Route::get('/{id}/edit_ajax', [TransaksiController::class, 'edit_ajax']);
            Route::put('/{id}/update_ajax', [TransaksiController::class, 'update_ajax']);
            Route::get('/{id}/delete_ajax', [TransaksiController::class, 'confirm_ajax']);
            Route::delete('/{id}/delete_ajax', [TransaksiController::class, 'delete_ajax']);
            Route::get('/export_pdf', [TransaksiController::class, 'export_pdf']);
            Route::get('{id}/export_detail_pdf', [TransaksiController::class, 'export_detail_pdf']);
            Route::delete('/{id}', [TransaksiController::class, 'destroy']);
        });
    });
});