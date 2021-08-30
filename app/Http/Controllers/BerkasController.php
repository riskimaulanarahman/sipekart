<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\KegiatanLaporan;

class BerkasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $module)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        try {

            // if($file = $request->hasFile('file')) {
                $module = "kegiatanrt";
                $file = $request->file('myFile');
                $nama_file = $module."_".time()."_".$file->getClientOriginalName();
                $tujuan_upload = 'upload';
                $file->move($tujuan_upload,$nama_file);
            
                return $nama_file;
            // }
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
        //
    }
}
