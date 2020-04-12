<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Member;
use App\User;
use Illuminate\Support\Facades\Hash;
use Validator;
use Response;
use Illuminate\Support\Facades\Input;

class AccountController extends Controller
{
    //
    public function add_account(Request $req){
        
        $rules = array(
            'fname' => 'required|string|max:255',
            'lname' => 'required|string|max:255',
            'mname' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'username' => 'required|string|max:255|unique:users',
        );
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails()) {
            return back()->withErrors($validator->getMessageBag());
        }
        else {
            $data_user = new User();
            $data_user->name = strtoupper($req['lname'].' '.$req['fname'].' '.$req['mname']) ;
            $data_user->username = $req['username'];
            $data_user->email = $req['email'];
            $data_user->password = Hash::make($req['password']);
            $data_user->usertype = 'member';
            $data_user->status = 'active';
            $data_user->save();

            $data_member = new Member();
            $data_member->user_id = $data_user->id;
            $data_member->fname = $req['fname'];
            $data_member->lname = $req['lname'];
            $data_member->mname = $req['mname'];
            $data_member->dob = $req['dob'];
            $data_member->address = $req['address'];
            $data_member->gender = $req['gender'];
            $data_member->civil_status = $req['civil_status'];
            $data_member->profilepic = 'profile.jpg';
            $data_member->status = 'active';
            $data_member->save();
        }
        return redirect()->back()->with('success','Member successfully added!');
    }
    public function view_account($member_id){
        $data_member = Member::with('user')->where('id', '=', $member_id)->first();

        return view('admin.member', compact('data_member'));

    }
}
