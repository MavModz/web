<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Gallery;
use Illuminate\Http\Request;
use Session;

class GallerysController extends Controller
{
    public function new(){
        return view('Gallery.add')
        ->with('categories',Category::where('status',1)->where('type',4)->get());
    }

    public function store(Request $request){
        //dd($request->all());
        $this->validate($request,[
            'name'=>'required|max:255',
            'category'=>'required',
            'image' => 'required|mimes:jpg,jpeg,png|max:5000'
        ]);
        
        $image=$request->image->store('Gallery');

        Gallery::create([
            'name'=>$request->name,
            'category_id' => $request->category,
            'image'=>$image
        ]);
        
        Session::flash('flash_type','success');
        Session::flash('flash_message','Image Added Successfully.');
        
        return redirect(url('/home/gallery/view'));
    }

    public function view(){
        return view('Gallery.view')
            ->with('gallery',Gallery::with('category')->paginate(15));
    }

    public function changestatus($gid){
        $gallery=Gallery::where('id',$gid)
            ->first();

        if($gallery->status==1){
            Gallery::where('id',$gid)
                ->update([
                    "status" => 0
                ]);
            Session::flash('flash_type','danger');
            Session::flash('flash_message','Image Status changed to inactive.');
        }
        else{
            Gallery::where('id',$gid)
                ->update([
                    "status" => 1
                ]);

            Session::flash('flash_type','success');
            Session::flash('flash_message','Image Status changed to active.');
        }

        return redirect(url('/home/gallery/view'));
    }

    public function edit($gid){
        $gallery=Gallery::with('category')
            ->where('id',$gid)
            ->first();

        if($gallery!==NULL)
        {
            return view('Gallery.edit')
                ->with('categories',Category::where('status',1)->where('type',4)->get())
                ->with('gallery',$gallery);
        }
        return abort(404);
    }

    public function update(Request $request){
        $this->validate($request,[
            'name'=>'required|max:255',
            'category'=>'required'
        ]);

        if($request->image!=NULL){
            $this->validate($request,[
                'image' => 'mimes:jpg,jpeg,png|max:5000'
            ]);
            $image=$request->image->store('Gallery');
            Gallery::where('id',$request->gid)
                ->update([
                    'image'=>$image
                ]);
        }

        Gallery::where('id',$request->gid)
        ->update([
            'name'=>$request->name,
            'category_id' => $request->category
        ]);
        
        Session::flash('flash_type','success');
        Session::flash('flash_message','Image Updated Successfully.');
        
        return redirect(('/home/gallery/view'));
    }
}
