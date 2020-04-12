<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Response;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Hash;
use App\User;
use App\Brgyuser;
use App\Municipality_user;
use Config;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    //
    public function add_user(Request $request)
    {
        $rules = array(
            'fullname' => 'required|string|max:255',
            'username' => 'required|string|max:255|unique:users',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required'
        );
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails()) {
            return back()->withErrors($validator->getMessageBag());

        } else {
            $data_user = new User();
            $data_user->name = strtoupper($request['fullname']);
            $data_user->username = $request['username'];
            $data_user->email = $request['email'];
            $data_user->password = Hash::make($request['password']);
            $data_user->usertype = 'brgy';
            $data_user->status = 'active';
            $data_user->save();
            //return $data_user;

            $data_bry = new Brgyuser();
            $data_bry->user_id = $data_user->id;
            $data_bry->brgy = $request['brgy'];
            $data_bry->save();
            return redirect()->back()->with('success','User successfully added!');
        }
    }

    public function add_user_municipality(Request $request)
    {
        $rules = array(
            'fullname' => 'required|string|max:255',
            'username' => 'required|string|max:255|unique:users',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required'
        );
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails()) {
            return back()->withErrors($validator->getMessageBag());

        } else {
            $data_user = new User();
            $data_user->name = strtoupper($request['fullname']);
            $data_user->username = $request['username'];
            $data_user->email = $request['email'];
            $data_user->password = Hash::make($request['password']);
            $data_user->usertype = 'admin';
            $data_user->status = 'active';
            $data_user->save();
            //return $data_user;

            $data_bry = new Municipality_user();
            $data_bry->user_id = $data_user->id;
            $data_bry->municipality = $request['municipality'];
            $data_bry->save();
            return redirect()->back()->with('success','User successfully added!');
        }
    }
    
    public function delete_user($user_id)
    {
        User::find($user_id)->delete();
        $updateBrgyuser = Brgyuser::where('user_id', '=', $user_id)
                    ->delete();
        return redirect()->back()->with('warning','User successfully deleted!');
    }

    public function delete_user_municipality($user_id)
    {
        User::find($user_id)->delete();
        $updateMunicipalityuser = Municipality_user::where('user_id', '=', $user_id)
                    ->delete();
        return redirect()->back()->with('warning','User successfully deleted!');
    }

    public function view_users(Request $req)
    {
        
        if (Auth::check()){
            $user_id = Auth::user()->id;
        }
        $get_municipality = Municipality_user::where('user_id', '=', $user_id)->first();
        $get_brgy = $get_municipality->municipality;
        $brgy  = Config::get('brgy.'.$get_brgy);

    
        $data_user = Brgyuser::with('user')->get();
    
        return view('admin.users', compact('get_municipality','data_user','brgy'));
    }
}
