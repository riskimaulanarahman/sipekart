<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Hash;
use App\Jabatan;
use App\SuratMasuk;
use App\SuratKeluar;
use App\Disposisi;
use App\Karyawan;
use Illuminate\Support\Carbon;


class ListController extends Controller
{

    public function listSuratPelayanan() {
        return DB::table('ref_jenis_surat_pelayanan')->select('id_jenis_surat_pelayanan','nama_jenis_surat_pelayanan')->get();
    }

    public function listJabatan() {
        return DB::table('ref_jabatan')->select('id_jabatan','nama_jabatan')->get();
    }

}
