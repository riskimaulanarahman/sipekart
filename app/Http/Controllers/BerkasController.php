<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SuratMasuk;
use App\SuratKeluar;
use App\SuratPelayanan;

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
    public function update(Request $request, $id,$module)
    {

        $file = $request->file('file');
        $nama_file = $module."_".time()."_".$file->getClientOriginalName();
        $tujuan_upload = 'upload';
        $file->move($tujuan_upload,$nama_file);
        
        if($module == 'suratmasuk') {

            $data = SuratMasuk::findOrFail($id);
            $data->update([
                'lampiran' => $nama_file
            ]);
            
        } else if($module == 'suratkeluar') {
            
            $data = SuratKeluar::findOrFail($id);
            $data->update([
                'lampiran' => $nama_file
            ]);
            
        } else if($module == 'suratpelayanan') {
            
            $data = SuratPelayanan::findOrFail($id);
            $data->update([
                'lampiran' => $nama_file
            ]);
            
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
