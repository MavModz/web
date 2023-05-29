<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Slug;
use Illuminate\Http\Request;
use Session;

class CategoriesController extends Controller
{
    public function new(){
        return view('Category.add');
    }

    public function store(Request $request){
        //dd($request->all());
        $this->validate($request,[
            'name'=>'required|max:100', 
            'slug'=>'required|max:100|unique:slugs',
            'type'=>'required',
            'description' => 'nullable',
            'meta_title'=>'required',
            'meta_keyword'=>'required',
            'meta_description'=>'required',
            'image' => 'nullable|mimes:jpg,jpeg,png|max:5000'
        ]);
        
        $image="";
        
        if($request->image!=NULL){
            $image=$request->image->store('Category');
        }

        $category=Category::create([
                'name'=>$request->name, 
                'slug'=>$request->slug,
                'type'=>$request->type,
                'description'=>$request->description,
                'meta_title'=>$request->meta_title,
                'meta_keyword'=>$request->meta_keyword,
                'meta_description'=>$request->meta_description,
                'image'=>$image
            ]);

        Slug::create([
            'slug' => $request->slug,
            'type' => 4,
            'slugid' => $category->id
        ]);        
        
        Session::flash('flash_type','success');
        Session::flash('flash_message','Category Created Successfully.');
        
        return redirect(url('/home/categories/view'));
    }

    public function view(){
        return view('Category.view')
            ->with('categories',Category::paginate(15));
    }
   public function pdfnew(){
       
       return view('allpdf');
   }
    public function edit($cid){
        $category=Category::where('id',$cid)
            ->first();

        return view('Category.edit')
            ->with('category',$category);
    }

    public function update(Request $request){

        $slug=Slug::where('slugid',$request->cid)
            ->where('type',4)
            ->first();

        $this->validate($request,[
            'name'=>'required|max:100', 
            'slug'=>'required|max:100|unique:slugs,slug,'.$slug->id,
            'description' => 'nullable',
            'meta_title'=>'required',
            'meta_keyword'=>'required',
            'meta_description'=>'required'
        ]);

        if($request->image!=NULL){
            $this->validate($request,[
                'image' => 'mimes:jpg,jpeg,png|max:5000'
            ]);

            $image=$request->image->store('Category');

            Category::where('id',$request->cid)
                ->update([
                    'image'=>$image
                ]);
        }

        Category::where('id',$request->cid)
            ->update([
                "name" => $request->name,
                "slug" => $request->slug,
                'description'=>$request->description,
                "meta_title" => $request->meta_title,
                "meta_keyword" => $request->meta_keyword,
                "meta_description" => $request->meta_description,
            ]);

        Slug::where('id',$slug->id)
            ->update([
                'slug' => $request->slug
            ]);

        Session::flash('flash_type','success');
        Session::flash('flash_message','Category Updated Successfully.');
        
        return redirect(url('/home/categories/view'));
    }

    public function changestatus($cid){
        $category=Category::where('id',$cid)
            ->first();
        if($category->status==1){
            Category::where('id',$cid)
                ->update([
                    "status" => 0
                ]);
            Session::flash('flash_type','danger');
            Session::flash('flash_message','Category Status changed to inactive.');
        }
        else{
            Category::where('id',$cid)
                ->update([
                    "status" => 1
                ]);
                Session::flash('flash_type','success');
                Session::flash('flash_message','Category Status changed to active.');
        }

        return redirect(url('/home/categories/view'));
    }
}
