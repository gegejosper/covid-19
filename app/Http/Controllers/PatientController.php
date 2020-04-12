<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Patient;
use Illuminate\Support\Facades\Hash;
use Validator;
use DateTime;
use Response;
use DB; 
use Config;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use App\Municipality_user;

class PatientController extends Controller
{
    //
    public function add_patient(Request $req){
        
        $rules = array(
            'fname' => 'required|string|max:255',
            'lname' => 'required|string|max:255',
            'mname' => 'required|string|max:255',
        );
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails()) {
            return back()->withErrors($validator->getMessageBag());
        }
        else {
            $data_member = new Patient();
            $data_member->fname = $req['fname'];
            $data_member->lname = $req['lname'];
            $data_member->mname = $req['mname'];
            $data_member->age = $req['age'];
            $data_member->address = $req['address'];
            $data_member->gender = $req['gender'];
            $data_member->nationality = $req['nationality'];
            $data_member->travel_history = $req['travel_history'];
            $orgDate = $req['date_exposure'];  
            $newDate = date("d/m/Y", strtotime($orgDate));  
            $data_member->brgy = $req['brgy'];
            $data_member->date_exposure = $newDate;
            $data_member->contact_num = $req['contact_num'];
            $data_member->patient_type = $req['patient_type'];
            $data_member->symptoms = $req['symptoms'];
            $data_member->municipality = $req['municipality'];
            $data_member->save();
        }
        return redirect()->back()->with('success','Patient successfully added!');
    }
    public function view_patients(){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $data_patient = Patient::all();
        return view('admin.patient', compact('data_patient', 'get_municipality'));
    }
    public function delete_patient($patient_id){
        Patient::find($patient_id)->delete();
        return redirect()->back()->with('error','Patient successfully deleted!');
    }
    public function view_patient($patient_id){
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $get_mun = $get_municipality->municipality;
        $municipality = $get_municipality->municipality;
        $brgy  = Config::get('brgy.'.$get_mun);
        $data_patient = Patient::where('id', '=', $patient_id)->first();
        return view('admin.patient', compact('data_patient', 'brgy', 'get_municipality'));
    }
    public function patient_search(Request $request){
        if($request->ajax())
        {
            $search = $request->search;
            $output="";
            $data_patient = DB::table('patients')
                ->where(function($query) use ($search){
                    $query->where('patients.fname', 'LIKE', '%'.$search.'%');
                    $query->orWhere('patients.lname', 'LIKE', '%'.$search.'%');
                    $query->orWhere('patients.mname', 'LIKE', '%'.$search.'%');
                })
                ->latest()
                ->get();
            if($data_patient)
            {
                $count=1;
                foreach ($data_patient as $Patient) {
                    $date1 = strtotime($Patient->date_exposure);
                    $date2 = strtotime(date('d/m/Y'));
                    date_default_timezone_set('Asia/Manila');

                        $var = trim($Patient->date_exposure);
                        $date1 = str_replace('/', '-', $var);
                        $date2 = date('d-m-Y');

                        $date1new = new DateTime($date1);
                        $date2new = new DateTime($date2);
                        $diff = $date1new->diff($date2new);
                        //echo $date1." - ".$date2;
                        $quarantine = $diff->d;
                    $output.='<tr>
                        <td>'.$count.'</td>.
                        <td><a href="/admin/patient/view/'.$Patient->id.'">'.strtoupper($Patient->lname).', '.strtoupper($Patient->fname).' '.strtoupper($Patient->mname).'</td>'.
                        '<td>'.$Patient->age.'</td>
                        <td>'.$Patient->gender.'</td>
                        <td>'.$Patient->address.'</td>;
                        <td>'.$Patient->nationality.'</td>;
                        <td>'.$Patient->date_exposure.'</td>;
                        <td>'.$Patient->travel_history.'</td>;
                        <td>'.$Patient->patient_type.'</td>;
                        <td><a href="/admin/patient/delete/'.$Patient->id.'" class="delete-modal btn btn-danger btn-small"><i class="btn-icon-only fas fa-times"> </i></a></td>';
                    $output .='</tr>';
                    $count++;
                }
                return Response($output);
            }
        }
    }
    public function patient_search_pum(Request $request){
        if($request->ajax())
        {
            $search = $request->search;
            $output="";
            $data_patient = DB::table('patients')
                ->where('patient_type','=','PUM')
                ->where(function($query) use ($search){
                    $query->where('patients.fname', 'LIKE', '%'.$search.'%');
                    $query->orWhere('patients.lname', 'LIKE', '%'.$search.'%');
                    $query->orWhere('patients.mname', 'LIKE', '%'.$search.'%');
                })
                ->latest()
                ->get();
            if($data_patient)
            {
                $count=1;
                foreach ($data_patient as $Patient) {
                    $date1 = strtotime($Patient->date_exposure);
                    $date2 = strtotime(date('d/m/Y'));
                    date_default_timezone_set('Asia/Manila');

                        $var = trim($Patient->date_exposure);
                        $date1 = str_replace('/', '-', $var);
                        $date2 = date('d-m-Y');

                        $date1new = new DateTime($date1);
                        $date2new = new DateTime($date2);
                        $diff = $date1new->diff($date2new);
                        //echo $date1." - ".$date2;
                        $quarantine = $diff->d;
                    $output.='<tr>
                        <td>'.$count.'</td>.
                        <td><a href="/admin/patient/view/'.$Patient->id.'">'.strtoupper($Patient->lname).', '.strtoupper($Patient->fname).' '.strtoupper($Patient->mname).'</td>'.
                        '<td>'.$Patient->age.'</td>
                        <td>'.$Patient->gender.'</td>
                        <td>'.$Patient->address.'</td>;
                        <td>'.$Patient->nationality.'</td>;
                        <td>'.$Patient->date_exposure.'</td>;
                        <td>'.$Patient->travel_history.'</td>;
                        <td>'.$Patient->patient_type.'</td>;
                        <td>'.$quarantine.'</td>';
                    $output .='</tr>';
                    $count++;
                }
                return Response($output);
            }
        }
    }

    public function patient_search_pui(Request $request){
        if($request->ajax())
        {
            $search = $request->search;
            $output="";
            $data_patient = DB::table('patients')
                ->where('patient_type','=','PUI')
                ->where(function($query) use ($search){
                    $query->where('patients.fname', 'LIKE', '%'.$search.'%');
                    $query->orWhere('patients.lname', 'LIKE', '%'.$search.'%');
                    $query->orWhere('patients.mname', 'LIKE', '%'.$search.'%');
                })
                ->latest()
                ->get();
            if($data_patient)
            {
                $count=1;
                foreach ($data_patient as $Patient) {
                    $date1 = strtotime($Patient->date_exposure);
                    $date2 = strtotime(date('d/m/Y'));
                    date_default_timezone_set('Asia/Manila');

                        $var = trim($Patient->date_exposure);
                        $date1 = str_replace('/', '-', $var);
                        $date2 = date('d-m-Y');

                        $date1new = new DateTime($date1);
                        $date2new = new DateTime($date2);
                        $diff = $date1new->diff($date2new);
                        //echo $date1." - ".$date2;
                        $quarantine = $diff->d;
                    $output.='<tr>
                        <td>'.$count.'</td>.
                        <td><a href="/admin/patient/view/'.$Patient->id.'">'.strtoupper($Patient->lname).', '.strtoupper($Patient->fname).' '.strtoupper($Patient->mname).'</a></td>'.
                        '<td>'.$Patient->age.'</td>
                        <td>'.$Patient->gender.'</td>
                        <td>'.$Patient->address.'</td>;
                        <td>'.$Patient->nationality.'</td>;
                        <td>'.$Patient->date_exposure.'</td>;
                        <td>'.$Patient->travel_history.'</td>;
                        <td>'.$Patient->patient_type.'</td>;
                        <td>'.$quarantine.'</td>';
                    $output .='</tr>';
                    $count++;
                }
                return Response($output);
            }
        }
    }
    public function patient_search_quarantine(Request $request){
        if($request->ajax())
        {
            $search = $request->search;
            $output="";
            $data_patient = DB::table('patients')
                ->where('patient_type','=','COMPLELETED')
                ->where(function($query) use ($search){
                    $query->where('patients.fname', 'LIKE', '%'.$search.'%');
                    $query->orWhere('patients.lname', 'LIKE', '%'.$search.'%');
                    $query->orWhere('patients.mname', 'LIKE', '%'.$search.'%');
                })
                ->latest()
                ->get();
            if($data_patient)
            {
                $count=1;
                foreach ($data_patient as $Patient) {
                    $date1 = strtotime($Patient->date_exposure);
                    $date2 = strtotime(date('d/m/Y'));
                    date_default_timezone_set('Asia/Manila');

                        $var = trim($Patient->date_exposure);
                        $date1 = str_replace('/', '-', $var);
                        $date2 = date('d-m-Y');

                        $date1new = new DateTime($date1);
                        $date2new = new DateTime($date2);
                        $diff = $date1new->diff($date2new);
                        //echo $date1." - ".$date2;
                        $quarantine = $diff->d;
                    $output.='<tr>
                        <td>'.$count.'</td>.
                        <td><a href="/admin/patient/view/'.$Patient->id.'">'.strtoupper($Patient->lname).', '.strtoupper($Patient->fname).' '.strtoupper($Patient->mname).'</a></td>'.
                        '<td>'.$Patient->age.'</td>
                        <td>'.$Patient->gender.'</td>
                        <td>'.$Patient->address.'</td>;
                        <td>'.$Patient->nationality.'</td>;
                        <td>'.$Patient->date_exposure.'</td>;
                        <td>'.$Patient->travel_history.'</td>;
                        <td>'.$Patient->patient_type.'</td>;
                        <td>'.$quarantine.'</td>';
                    $output .='</tr>';
                    $count++;
                }
                return Response($output);
            }
        }
    }
    public function complete_quarantine($patient_id){
        $data_patient = Patient::where('id', '=', $patient_id)
                    ->update(['patient_type' => 'COMPLETED']);
    
        return redirect()->back()->with('success','Patient successfully completed quarantine!');
    }

    public function mark_dead($patient_id){
        $data_patient = Patient::where('id', '=', $patient_id)
                    ->update(['patient_type' => 'DEAD']);
    
        return redirect()->back()->with('success','Patient successfully updated!');
    }
    public function mark_positive($patient_id){
        $data_patient = Patient::where('id', '=', $patient_id)
                    ->update(['patient_type' => 'POSITIVE']);
    
        return redirect()->back()->with('success','Patient successfully updated!');
    }
    public function mark_recovered($patient_id){
        $data_patient = Patient::where('id', '=', $patient_id)
                    ->update(['patient_type' => 'RECOVERED']);
    
        return redirect()->back()->with('success','Patient successfully updated!');
    }
    public function patient_update(Request $req){
        $data_patient = Patient::where('id', '=', $req->patient_id)
                    ->update(['patient_type' => $req->patient_type, 'symptoms' => $req->symptoms, 'brgy' => $req->brgy, 'address' => $req->address]);
    
        return redirect()->back()->with('success','Patient successfully updated!');
    }
}
