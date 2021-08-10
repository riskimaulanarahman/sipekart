<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\SuratMasuk;
use App\SuratKeluar;
use App\SuratPelayanan;
use Illuminate\Support\Carbon;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
            $user = Auth::user();

            if($user->role == 'admin') {

                //surat masuk dashboard 1
                $todaysm = SuratMasuk::whereDate('tanggal_terima_surat',Carbon::today())->count();
                $weeksm =    SuratMasuk::where('tanggal_terima_surat', '>', Carbon::now()->startOfWeek())
                ->where('tanggal_terima_surat', '<', Carbon::now()->endOfWeek())
                ->count();
                $monthsm = SuratMasuk::whereMonth('tanggal_terima_surat',Carbon::now())->count();
                $thisyearsm = SuratMasuk::whereYear('tanggal_terima_surat',Carbon::now()->format('Y'))->count();
                // $monthsmlast = $thisyearsm-$monthsm;
                $monthsmlast = $thisyearsm;
                
                //surat keluar dashboard
                $todaysk = SuratKeluar::whereDate('tanggal_surat',Carbon::today())->count();
                $weeksk =    SuratKeluar::where('tanggal_surat', '>', Carbon::now()->startOfWeek())
                ->where('tanggal_surat', '<', Carbon::now()->endOfWeek())
                ->count();
                $monthsk = SuratKeluar::whereMonth('tanggal_surat',Carbon::now())->count();
                $thisyearsk = SuratKeluar::whereYear('tanggal_surat',Carbon::now()->format('Y'))->count();
                // $monthsklast = $thisyearsk-$monthsk;
                $monthsklast = $thisyearsk;
                
                //surat pelayanan dashboard 2
                $todaysp = SuratPelayanan::whereDate('tanggal_surat',Carbon::today())->count();
                $weeksp =    SuratPelayanan::where('tanggal_surat', '>', Carbon::now()->startOfWeek())
                ->where('tanggal_surat', '<', Carbon::now()->endOfWeek())
                ->count();
                $monthsp = SuratPelayanan::whereMonth('tanggal_surat',Carbon::now())->count();
                $thisyearsp = SuratPelayanan::whereYear('tanggal_surat',Carbon::now()->format('Y'))->count();
                // $monthsplast = $thisyearsp-$monthsp;
                $monthsplast = $thisyearsp;
                
            } else {
                //surat masuk dashboard 1
                $todaysm = SuratMasuk::where('id_users',$user->id)->whereDate('tanggal_terima_surat',Carbon::today())->count();
                $weeksm =    SuratMasuk::where('id_users',$user->id)->where('tanggal_terima_surat', '>', Carbon::now()->startOfWeek())
                ->where('tanggal_terima_surat', '<', Carbon::now()->endOfWeek())
                ->count();
                $monthsm = SuratMasuk::where('id_users',$user->id)->whereMonth('tanggal_terima_surat',Carbon::now())->count();
                $thisyearsm = SuratMasuk::where('id_users',$user->id)->whereYear('tanggal_terima_surat',Carbon::now()->format('Y'))->count();
                // $monthsmlast = $thisyearsm-$monthsm;
                $monthsmlast = $thisyearsm;
                
                //surat keluar dashboard
                $todaysk = SuratKeluar::where('id_users',$user->id)->whereDate('tanggal_surat',Carbon::today())->count();
                $weeksk =    SuratKeluar::where('id_users',$user->id)->where('tanggal_surat', '>', Carbon::now()->startOfWeek())
                ->where('tanggal_surat', '<', Carbon::now()->endOfWeek())
                ->count();
                $monthsk = SuratKeluar::where('id_users',$user->id)->whereMonth('tanggal_surat',Carbon::now())->count();
                $thisyearsk = SuratKeluar::where('id_users',$user->id)->whereYear('tanggal_surat',Carbon::now()->format('Y'))->count();
                // $monthsklast = $thisyearsk-$monthsk;
                $monthsklast = $thisyearsk;
                
                //surat pelayanan dashboard 2
                $todaysp = SuratPelayanan::where('id_users',$user->id)->whereDate('tanggal_surat',Carbon::today())->count();
                $weeksp =    SuratPelayanan::where('id_users',$user->id)->where('tanggal_surat', '>', Carbon::now()->startOfWeek())
                ->where('tanggal_surat', '<', Carbon::now()->endOfWeek())
                ->count();
                $monthsp = SuratPelayanan::where('id_users',$user->id)->whereMonth('tanggal_surat',Carbon::now())->count();
                $thisyearsp = SuratPelayanan::where('id_users',$user->id)->whereYear('tanggal_surat',Carbon::now()->format('Y'))->count();
                // $monthsplast = $thisyearsp-$monthsp;
                $monthsplast = $thisyearsp;
            }
                
        if(Auth::user()->role == 'admin') {
            
            return view('dashboard-admin')->with(compact(
                'todaysm', 'weeksm', 'monthsm','monthsmlast',
                'todaysk', 'weeksk', 'monthsk','monthsklast',
                'todaysp', 'weeksp', 'monthsp','monthsplast'
            ));

        } elseif(Auth::user()->role == 'supervisor') {

            return view('dashboard-supervisor')->with(compact(
                'todaysm', 'weeksm', 'monthsm','monthsmlast',
                'todaysk', 'weeksk', 'monthsk','monthsklast',
                'todaysp', 'weeksp', 'monthsp','monthsplast'
            ));

        } elseif(Auth::user()->role == 'operator') {

            return view('dashboard-operator')->with(compact(
                'todaysm', 'weeksm', 'monthsm','monthsmlast',
                'todaysk', 'weeksk', 'monthsk','monthsklast',
                'todaysp', 'weeksp', 'monthsp','monthsplast'
            ));

        }
    }
}
