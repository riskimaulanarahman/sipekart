<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Carbon;

use App\KegiatanLaporan;

class KegiatanLaporanController extends Controller
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
            if($user->role == 'operator') {
                $data = KegiatanLaporan::where('id_users',$user->id)->get();
            } else {
                $data = KegiatanLaporan::with('users')->get();
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

        $date = $request->tanggal;
        $fixed = date('Y-m-d', strtotime(substr($date,0,10)));

        $requestData = $request->all();
        if($date) {
            $requestData['tanggal'] = $fixed;
        }
        $requestData['id_users'] = $user->id;
        $requestData['bulan'] = Carbon::createFromFormat('Y-m-d', $fixed)->format('m');
        $requestData['tahun'] = Carbon::createFromFormat('Y-m-d', $fixed)->format('Y');
 
        try {
            KegiatanLaporan::create($requestData);

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
        return view('pages/kegiatan/indexlaporan');
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
        $date = $request->tanggal;
        $fixed = date('Y-m-d', strtotime(substr($date,0,10)));

        $requestData = $request->all();
        if($date) {
            $requestData['tanggal'] = $fixed;
        }
        
        try {
            $data = KegiatanLaporan::findOrFail($id);
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
            $data = KegiatanLaporan::find($id)->delete();

            return response()->json(["status" => "success", "message" => "Berhasil Hapus Data"]);

        } catch (\Exception $e){

            return response()->json(["status" => "error", "message" => $e->getMessage()]);
        }
    }
}
