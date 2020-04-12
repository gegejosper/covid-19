<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Patient;
use App\Brgyuser;
use Carbon\Carbon;
use DateTime;

use Illuminate\Support\Facades\Auth;


class BrgyController extends Controller
{
    //
    public function index(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $data_user = Brgyuser::where('user_id', '=', $user_id)->first();
        $data_patient_pum = Patient::where('brgy', '=', $data_user->brgy)->where('patient_type','=', 'PUM')->count();
        $data_patient_completed = Patient::where('brgy', '=', $data_user->brgy)->where('patient_type','=', 'COMPLETED')->count();
        $data_patient_positive = Patient::where('brgy', '=', $data_user->brgy)->where('patient_type','=', 'POSITIVE')->count();
        $data_patient_dead = Patient::where('brgy', '=', $data_user->brgy)->where('patient_type','=', 'DEAD')->count();
        $data_patient_pui = Patient::where('brgy', '=', $data_user->brgy)->where('patient_type','=', 'PUI')->count();
        return view('brgy.dashboard', compact('data_patient_completed','data_patient_dead','data_patient_positive','data_patient_pum', 'data_patient_pui'));
    }

    public function patients(){

        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $data_user = Brgyuser::where('user_id', '=', $user_id)->first();
        $data_patient = Patient::where('brgy', '=', $data_user->brgy)->latest()->get();
        return view('brgy.patients', compact('data_patient'));
    }

    public function reports(){
        $data_patient = Patient::latest()->get();
        return view('brgy.reports', compact('data_patient'));
    }

    

    public function pui(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $data_user = Brgyuser::where('user_id', '=', $user_id)->first();
        $data_patient = Patient::where('brgy', '=', $data_user->brgy)->where('patient_type','=', 'PUI')->latest()->get();
        return view('brgy.pui', compact('data_patient'));
    }

    public function pum(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $data_user = Brgyuser::where('user_id', '=', $user_id)->first();
        $data_patient = Patient::where('brgy', '=', $data_user->brgy)->where('patient_type','=', 'PUM')->latest()->get();
        return view('brgy.pum', compact('data_patient'));
    }

    public function quarantine(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $data_user = Brgyuser::where('user_id', '=', $user_id)->first();
        $data_patient = Patient::where('brgy', '=', $data_user->brgy)->where('patient_type','=', 'PUM')->latest()->get();
        $data_patient_completed = Patient::where('brgy', '=', $data_user->brgy)->where('patient_type','=', 'COMPLETED')->latest()->get();
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
        return view('brgy.quarantine', compact('data_patient_array', 'data_patient_completed'));
    }
}
