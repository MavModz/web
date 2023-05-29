@extends('layouts.header')
@section('title','View Categories')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">
                    <i class="fas fa-eye"></i>
                    View Categories
                </div>
                <div class="card-body">
                    @if (count($errors) > 0)
                        <div class = "alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if ( Session::has('flash_message') )
                        <div class="alert alert-{{ Session::get('flash_type') }} alert-dismissible fade show" role="alert">
                            <b>{{ Session::get('flash_message') }}</b>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                    @endif
                    @if(count($categories)>0)
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover datatable datatable-User">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Type</th>
                                        <th>Slug</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($categories as $item)
                                        <tr>
                                            <td>{{$item->name}}</td>
                                            <td>
                                                @if($item->type==1)
                                                    <span class="badge badge-primary">Product</span>
                                                @elseif($item->type==2)
                                                    <span class="badge badge-primary">Blog</span>
                                                @elseif($item->type==3)
                                                    <span class="badge badge-primary">Site Pages</span>
                                                @elseif($item->type==4)
                                                    <span class="badge badge-primary">Gallery</span>
                                                @endif
                                            </td>
                                            <td>{{$item->slug}}</td>
                                            <td>
                                                @if($item->status)
                                                    <a href="/home/categories/change-status/{{ $item->id }}" onclick="return confirm('Are you sure you want to change status of this Category?')" class="badge badge-success">Active</a>
                                                @else
                                                    <a href="/home/categories/change-status/{{ $item->id }}" onclick="return confirm('Are you sure you want to change status of this Category?')" class="badge badge-danger">Inactive</a>
                                                @endif    
                                            </td>
                                            <td>
                                                @if($item->type!=3)
                                                    <a href="/home/categories/edit/{{ $item->id }}" id="{{ $item->id }}" class="badge badge-primary categories"><i class="fas fa-pencil-alt"></i></a>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        {{$categories->links()}}
                    @else
                        <h6>No Category Found.</h6>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection