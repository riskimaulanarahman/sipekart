<?php

namespace App\Http\Controllers\masterdatasurat\suratmasuk;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\SuratMasuk;
use Illuminate\Support\Carbon;
use DateTime;
use Auth;

class SuratmasukController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        try {
            if($user->role !== 'admin') {
                $data = SuratMasuk::where('id_users',$user->id)->get();
            } else {
                $data = SuratMasuk::all();
            }

            return response()->json(['status' => "show", "message" => "Menampilkan Data" , 'data' => $data]);

        } catch (\Exception $e){

            return response()->json(["status" => "error", "message" => $e->getMessage()]);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = Auth::user();

        $date = $request->tanggal_surat;
        $fixed = date('Y-m-d', strtotime(substr($date,0,10)));
        $date2 = $request->tanggal_terima_surat;
        $fixed2 = date('Y-m-d', strtotime(substr($date2,0,10)));

        $requestData = $request->all();
        if($date) {
            $requestData['tanggal_surat'] = $fixed;
        }
        if($date2) {
            $requestData['tanggal_terima_surat'] = $fixed2;
        }
        $requestData['id_users'] = $user->id;
        
        try {
            SuratMasuk::create($requestData);

            return response()->json(["status" => "success", "message" => "Berhasil Menambahkan Data"]);

        } catch (\Exception $e){

            return response()->json(["status" => "error", "message" => $e->getMessage()]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        return view('pages/masterdata/masterdatasurat/suratmasuk/suratmasuk');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $date = $request->tanggal_surat;
        $fixed = date('Y-m-d', strtotime(substr($date,0,10)));
        $date2 = $request->tanggal_terima_surat;
        $fixed2 = date('Y-m-d', strtotime(substr($date2,0,10)));

        $requestData = $request->all();
        if($date) {
            $requestData['tanggal_surat'] = $fixed;
        }
        if($date2) {
            $requestData['tanggal_terima_surat'] = $fixed2;
        }
        
        try {
            $data = SuratMasuk::findOrFail($id);
            $data->update($requestData);

            return response()->json(["status" => "success", "message" => "Berhasil Ubah Data"]);

        } catch (\Exception $e){

            return response()->json(["status" => "error", "message" => $e->getMessage()]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $data = SuratMasuk::where('id_surat_masuk',$id)->delete();

            return response()->json(["status" => "success", "message" => "Berhasil Hapus Data"]);

        } catch (\Exception $e){

            return response()->json(["status" => "error", "message" => $e->getMessage()]);
        }
    }
}
