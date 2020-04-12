<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Patient;
use App\Municipality_user;
use Carbon\Carbon;
use DateTime;
use Config;

class SuperAdminController extends Controller
{
    //
    public function index(){
        $data_patient_pum = Patient::where('patient_type','=', 'PUM')->count();
        $data_patient_completed = Patient::where('patient_type','=', 'COMPLETED')->count();
        $data_patient_positive = Patient::where('patient_type','=', 'POSITIVE')->count();
        $data_patient_dead = Patient::where('patient_type','=', 'DEAD')->count();
        $data_patient_pui = Patient::where('patient_type','=', 'PUI')->count();
        $data_patient_recovered = Patient::where('patient_type','=', 'RECOVERED')->count();
        return view('super.dashboard', compact('data_patient_completed','data_patient_dead','data_patient_positive','data_patient_pum', 'data_patient_pui', 'data_patient_recovered'));
    }
    public function reports(){
        
        $municipality  = Config::get('municipality.municipality');
        $data_patient = Patient::latest()->get();
        //dd($data_patient);
        return view('super.reports', compact('data_patient', 'municipality'));
    }

    public function export(){
        
        $municipality  = Config::get('municipality.municipality');
        return view('super.export', compact('municipality'));
    }

    public function filter_report(Request $req){
        $type = $req->patient_type;
        // $startDate = date('Y-m-d', strtotime($req->fromdate));
        // $endDate = date('Y-m-d', strtotime($req->todate));
        $org_from_date = $req->fromdate;  
        $new_from_date = date("Y-m-d", strtotime($org_from_date)); 
        
        $org_to_date = $req->todate;  
        $new_to_date = date("Y-m-d", strtotime($org_to_date)); 
        
        $startDate = Carbon::parse($new_from_date.' 00:00:00');
        $endDate = Carbon::parse($new_to_date .' 23:59:59'); 
        //dd($type);
        $municipality  = Config::get('municipality.municipality');
        $get_municipality = strtoupper($req->municipality);
        if($type=="ALL" && $get_municipality != "ALL"){
            $data_patient = Patient::where('municipality', '=', $get_municipality)
            ->whereBetween('created_at', [$startDate, $endDate])
            ->latest()->get();
        }
        elseif($type !="ALL" && $get_municipality == "ALL"){
            $data_patient = Patient::where('patient_type', '=', $type)
            ->whereBetween('created_at', [$startDate, $endDate])
            ->latest()->get();
        }
        elseif($type == "ALL" && $get_municipality == "ALL"){
            //dd($endDate);
            $data_patient = Patient::latest()
            ->whereBetween('created_at', [$startDate, $endDate])
            ->get();

        }
        else{
            $data_patient = Patient::where('patient_type', '=', $type)
                ->where('municipality', '=', $get_municipality)
                ->whereBetween('created_at', [$startDate, $endDate])
                ->latest()->get();
        }    

        
        return view('super.reports', compact('data_patient', 'municipality', 'type', 'startDate', 'endDate', 'get_municipality'));
    }

    public function users(Request $req)
    {
        $municipality  = Config::get('municipality.municipality');
        $data_user = Municipality_user::with('user')->get();
    
        return view('super.users', compact('data_user','municipality'));
    }
}
