<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

use App\Models\Admin;
use App\Model\AdminLogin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use GuzzleHttp\Client;
use ALajusticia\Logins\Models\Login;

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


    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/admin/dashboard';



    public function showLoginForm()
    {
        return view('admin.auth.login');
    }





    public function login(Request $request)
    { 
       //return $request->all();
        $this->validate($request, [
            'email' => 'required',
            'password'=>'required',
        ]);

        $remember_me = $request->has('remember_me') ? true : false; 

        if($this->guard()->attempt(['email' => request('email'), 'password' => request('password'),'status' => 1], true)) {
            $admin =  Auth::guard('admin')->user();
            if ($admin->google2fa_enabled) {
                session(['admin_id' => $admin->id]);
                Auth::guard('admin')->logout();

                $admin->latitude = $request->latitude;
                $admin->longitude = $request->longitude;
                $admin->save();

                return redirect()->route('admin.2fa.verify');
            }

            return redirect()->route('admin.dashboard.index')->with(['class'=>'success','message'=>'Logedin Successfully.']);
        } 

        if ($admin = Admin::where('email',$request->email)->first()) {
            if ($admin->status == 0) {
                return redirect()->back()->with(['class'=>'error','message'=>'You are not an active person, please contact with Owner.']);
            }        
        }  
        return redirect()->back()->with(['class'=>'error','message'=>'These credentials do not match our records.']);
        
        
    }


    public function show2FAVerificationForm(){
        return view('admin.auth.2fa_verify');
    }

    public function verify2FA(Request $request){
        $request->validate([
            'one_time_password' => 'required',
        ]);

        $admin = Admin::find(session('admin_id'));

        $google2fa = app('pragmarx.google2fa');
        $valid = $google2fa->verifyKey($admin->google2fa_secret, $request->one_time_password);

        if ($valid) {
            Auth::guard('admin')->login($admin);
            session()->forget('admin_id');
            $user = auth('admin')->user();
            $logins = Login::where('authenticatable_id', $user->id)->latest()->first();
            $logins->latitude = $user->latitude;
            $logins->longitude = $user->longitude;
            $address = null;

            if ($user->latitude && $user->longitude) {
                $client = new Client();
                $apiKey = 'AIzaSyA5zaOBE-YNdQ5vL0RqUv74xzAuMMWXBcs&libraries=places';
                $response = $client->get("https://maps.googleapis.com/maps/api/geocode/json?latlng=$user->latitude,$user->longitude&key=$apiKey");
                $data = json_decode($response->getBody(), true);
                if (isset($data['results'][0])) {
                    $address = $data['results'][0]['formatted_address'];
                }
            }
            $logins->address = $address;
            $logins->save();

            return redirect()->route('admin.dashboard.index');
        } else {
            return redirect()->back()->withErrors(['one_time_password' => 'Invalid OTP']);
        }
    }



    public function logout()
    {
        $this->guard()->logout();
        return redirect()->route('admin.login.form');
    }



    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('admin.guest', ['except' => 'logout']);
    }


    protected function guard()
    {
        return Auth::guard('admin');
    }

}
