<?php

namespace App\Http\Middleware;

use Closure;

use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
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

        return $next($request);
    }
}
