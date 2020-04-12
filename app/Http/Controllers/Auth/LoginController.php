<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Support\Facades\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    //protected $redirectTo = '/member/home';

    public function redirectTo(){
        if (Auth::check()) {
            if(Auth::user()->usertype == "superadmin") {
                //return redirect('/super/dashboard');    
                return('dsads');
            }
            elseif(Auth::user()->usertype == "admin") {
                return redirect('/admin/dashboard');    
            }
            elseif(Auth::user()->usertype == "brgy") {
                return redirect('/brgy/dashboard');    
            }
            else {
                return redirect('/'); 
            }
        }
    }
   

    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        //$this->username = $this->findUsername();
    }
    // public function findUsername()
    // {
    //     $login = request()->input('username');
    //     //dd($login);
    //     $fieldType = filter_var($login, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';
 
    //     request()->merge([$fieldType => $login]);
 
    //     return $fieldType;
    // }
    // public function username(){
    //     return $this->username;
    // }

    public function username(){
        return 'username';
    }

    protected function authenticated() {
        if (Auth::check()) {
            if(Auth::user()->usertype == "superadmin") {
                return redirect('/super/dashboard');    
            }
            elseif(Auth::user()->usertype == "admin") {
                return redirect('/admin/dashboard');    
            }
            elseif(Auth::user()->usertype == "brgy") {
                return redirect('/brgy/dashboard');    
            }
            else {
                return redirect('/'); 
            }
        }
    }
}
