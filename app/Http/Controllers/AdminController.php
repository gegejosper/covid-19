<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Patient;
use Carbon\Carbon;
use App\Municipality_user;
use DateTime;
use Config;
use Illuminate\Support\Facades\Auth;
class AdminController extends Controller
{
    //
    public function index(){

        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $mun  = Config::get('municipality.municipality');
        //dd($mun);
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $municipality = $get_municipality->municipality;
        $data_patient_pum = Patient::where('municipality', '=', $municipality)->where('patient_type','=', 'PUM')->count();
        $data_patient_completed = Patient::where('municipality', '=', $municipality)->where('patient_type','=', 'COMPLETED')->count();
        $data_patient_positive = Patient::where('municipality', '=', $municipality)->where('patient_type','=', 'POSITIVE')->count();
        $data_patient_dead = Patient::where('municipality', '=', $municipality)->where('patient_type','=', 'DEAD')->count();
        $data_patient_pui = Patient::where('municipality', '=', $municipality)->where('patient_type','=', 'PUI')->count();
        $data_patient_recovered = Patient::where('municipality', '=', $municipality)->where('patient_type','=', 'RECOVERED')->count();
        return view('admin.dashboard', compact('data_patient_completed','data_patient_dead','data_patient_positive','data_patient_pum', 'data_patient_pui', 'data_patient_recovered', 'get_municipality'));
    }

    public function patients(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $get_brgy = $get_municipality->municipality;
        $brgy  = Config::get('brgy.'.$get_brgy);
        
        // foreach($brgy as $bg) {
        //     foreach($bg as $barangay){
        //         echo $barangay;
        //     }
        // }
        // echo count($brgy);
        // for($i =1;  $i< count($brgy); $i++){
        //     echo "<option>".strtoupper($brgy[$i])."</option>";
        // }
        $data_patient = Patient::latest()->get();
        return view('admin.patients', compact('data_patient','brgy', 'get_municipality'));
    }

    public function reports(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $get_mun = $get_municipality->municipality;
        $municipality = $get_municipality->municipality;
        $brgy  = Config::get('brgy.'.$get_mun);
        $data_patient = Patient::where('municipality', '=', $municipality)->latest()->get();
        //dd($brgy);
        return view('admin.reports', compact('data_patient', 'brgy', 'get_municipality'));
    }

    
    public function report_barangay($bg){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_brgy = $bg;
        //dd($get_bgry);
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $municipality = $get_municipality->municipality;
        $get_mun = $get_municipality->municipality;
        $brgy  = Config::get('brgy.'.$get_mun);
        $data_patient = Patient::where('brgy', '=', $get_brgy)
            ->where('municipality', '=', $municipality)
            ->latest()->get();
        return view('admin.reports', compact('data_patient', 'brgy', 'get_municipality', 'get_brgy'));
    }
    public function report_type($type){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $municipality = $get_municipality->municipality;
        $type = strtoupper($type);
        $get_brgy = $get_municipality->municipality;

        $brgy  = Config::get('brgy.'.$get_brgy);
        $data_patient = Patient::where('patient_type', '=', $type)
            ->where('municipality', '=', $municipality)
            ->latest()->get();
        return view('admin.reports', compact('data_patient', 'brgy', 'get_municipality'));
    }
    public function filter_report(Request $req){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $municipality = $get_municipality->municipality;
        $type = $req->patient_type;
        //dd($type);
        // $startDate = date('Y-m-d', strtotime($req->fromdate));
        // $endDate = date('Y-m-d', strtotime($req->todate));
        $org_from_date = $req->fromdate;  
        $new_from_date = date("Y-m-d", strtotime($org_from_date)); 
        
        $org_to_date = $req->todate;  
        $new_to_date = date("Y-m-d", strtotime($org_to_date)); 
        
        $startDate = Carbon::parse($new_from_date.' 00:00:00');
        $endDate = Carbon::parse($new_to_date .' 23:59:59'); 
        //dd($endDate);
        //dd($new_from_date);
        $get_mun = $get_municipality->municipality;

        $brgy  = Config::get('brgy.'.$get_mun);
        $get_brgy = strtoupper($req->brgy);
        if($type=="ALL" && $get_brgy != "ALL"){
            $data_patient = Patient::where('brgy', '=', $get_brgy)
            ->where('municipality', '=', $municipality)
            ->whereBetween('created_at', [$startDate, $endDate])
            ->latest()->get();
        }
        elseif($type !="ALL" && $get_brgy == "ALL"){
            $data_patient = Patient::where('patient_type', '=', $type)
            ->where('municipality', '=', $municipality)
            ->whereBetween('created_at', [$startDate, $endDate])
            ->latest()->get();
        }
        elseif($type == "ALL" && $get_brgy == "ALL"){
            //dd($endDate);
            $data_patient = Patient::latest()
            ->where('municipality', '=', $municipality)
            ->whereBetween('created_at', [$startDate, $endDate])
            ->get();

        }
        else{
            $data_patient = Patient::where('patient_type', '=', $type)
                ->where('municipality', '=', $municipality)
                ->whereBetween('created_at', [$startDate, $endDate])
                ->where('brgy', '=', $get_brgy)
                ->latest()->get();
        }    

        
        return view('admin.reports', compact('data_patient', 'brgy', 'get_municipality', 'get_brgy', 'type', 'startDate', 'endDate'));
    }

    public function pui(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $municipality = $get_municipality->municipality;
        $data_patient = Patient::where('patient_type','=', 'PUI')
        ->where('municipality', '=', $municipality)
        ->latest()->get();
        return view('admin.pui', compact('data_patient', 'get_municipality'));
    }

    public function pum(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $municipality = $get_municipality->municipality;
        $data_patient = Patient::where('patient_type','=', 'PUM')
        ->where('municipality', '=', $municipality)
        ->latest()->get();
        return view('admin.pum', compact('data_patient', 'get_municipality'));
    }

    public function quarantine(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $municipality = $get_municipality->municipality;
        $data_patient = Patient::where('patient_type','=', 'PUM')
        ->where('municipality', '=', $municipality)
        ->latest()->get();
        $data_patient_completed = Patient::where('patient_type','=', 'COMPLETED')
            ->where('municipality', '=', $municipality)
            ->latest()->get();
        $data_patient_array = array();
        foreach ($data_patient as $Patient) {
            date_default_timezone_set('Asia/Manila');
            $var = trim($Patient->date_exposure);
            $date1 = str_replace('/', '-', $var);
            $date2 = date('d-m-Y');
            $date1new = new DateTime($date1);
            $date2new = new DateTime($date2);
            $diff = $date1new->diff($date2new);
            //echo $date1." - ".$date2;
            $quarantine = $diff->d;
            if($quarantine >= 15) {
                //echo $quarantine.'-';
                array_push($data_patient_array, $Patient);
            }   
        }
        return view('admin.quarantine', compact('data_patient_array', 'data_patient_completed', 'get_municipality'));
    }
    
}
