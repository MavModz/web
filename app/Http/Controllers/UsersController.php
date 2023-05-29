<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Session;
use Auth;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Hash;

class UsersController extends Controller
{
    public function new(){
        return view('Users.add');
    }

    public function store(Request $request){
        $this->validate($request,[
            'firstname'=>'required|string|max:255',
            'lastname'=>'required|string|max:255',
            'email'=>'required|string|max:255|email|unique:users',
            'password'=>'required|string|min:8',
            'mobile'=>'required|string|min:10',
        ]);

        User::create([
            'firstname' => $request->firstname,
            'lastname' => $request->lastname,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'mobile' => $request->mobile,
        ]);

        Session::flash('flash_type','success');
        Session::flash('flash_message','Account Created Successfully. Email:'.$request->email.' , Password:'.$request->password);
        
        return back();
    }

    public function view(){
        return view('Users.view')
            ->with('users',User::where('id','!=',Auth::User()->id)->paginate(15));
    }

    public function changestatus($uid){
        $user=User::where('id',$uid)
            ->first();
        if($user->status==1){
            User::where('id',$uid)
                ->update([
                    "status" => 0
                ]);
            Session::flash('flash_type','danger');
            Session::flash('flash_message','User Status changed to inactive.');
        }
        else{
            User::where('id',$uid)
                ->update([
                    "status" => 1
                ]);
            Session::flash('flash_type','success');
            Session::flash('flash_message','User Status changed to active.');
        }

        return redirect(url('/home/users/view'));
    }

    public function profile(){
        return view('Users.profile');
    }

    public function updateprofile(Request $request){
        $this->validate($request,[
            'firstname'=>'required|string|max:255',
            'lastname'=>'required|string|max:255',
            'mobile'=>'required|string|min:10',
        ]);

        User::where('id',Auth::User()->id)
        ->update([
            'firstname' => $request->firstname,
            'lastname' => $request->lastname,
            'mobile' => $request->mobile,
        ]);

        Session::flash('flash_type','success');
        Session::flash('flash_message','Account Updated Successfully.');
        
        return redirect(url('/home'));
    }

    public function changepassword(Request $request){
        $this->validate($request,[
            'oldpassword'=>'required|string|min:8|password:web',
            'password'=>'required|string|min:8|confirmed'
        ]);

        Auth::User()->update([
            'password' => Hash::make($request->password)
        ]);

        Session::flash('flash_type','success');
        Session::flash('flash_message','Password Updated Successfully.');
        
        return redirect(url('/home'));
    }
}
