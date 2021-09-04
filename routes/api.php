<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/upload-berkas','BerkasController@update')->name('uploadberkas');

//master user
Route::apiResource('/master-user','masteruser\LoginUserController');

//list
Route::post('list-kegiatan','API\ListController@listKegiatan');
Route::get('list-rt','API\ListController@listRT');

//cetak PDF
Route::get('/cetak-kegiatan/{bulan}/{tahun}/{rt}','KegiatanLaporanController@cetakkegiatan')->name('cetak-kegiatan');