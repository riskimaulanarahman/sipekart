<?php

namespace App\Http\Controllers\masterdatasurat\suratkeluar;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\SuratKeluar;
use Auth;

class SuratkeluarController extends Controller
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
                $data = SuratKeluar::where('id_users',$user->id)->get();
            } else {
                $data = SuratKeluar::all();
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

        $requestData = $request->all();
        $requestData['tanggal_surat'] = $fixed;
        $requestData['id_users'] = $user->id;
        
        try {
            SuratKeluar::create($requestData);

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
        return view('pages/masterdata/masterdatasurat/suratkeluar/suratkeluar');

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

        $requestData = $request->all();
        $requestData['tanggal_surat'] = $fixed;
        
        try {
            $data = SuratKeluar::findOrFail($id);
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
            $data = SuratKeluar::where('id_surat_keluar',$id)->delete();

            return response()->json(["status" => "success", "message" => "Berhasil Hapus Data"]);

        } catch (\Exception $e){

            return response()->json(["status" => "error", "message" => $e->getMessage()]);
        }
    }
}
