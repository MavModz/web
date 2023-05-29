@extends('layouts.header')
@section('title','Edit Image')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <i class="fas fa-plus"></i>
                    Edit Image
                </div>
                <div class="card-body">
                    <form method="POST" action="{{ url('/home/gallery/update') }}" enctype="multipart/form-data">
                        @csrf
                        @if (count($errors)>0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <div class="form-group row">
                            <label for="cid" class="col-md-3 col-form-label text-md-right">{{ __('Select Category*') }}</label>
                            <div class="col-md-9">
                                <select id="cid" class="form-control" name="category" required>
                                    <option value=""> --Select Category*-- </option>
                                    @foreach ($categories as $item)
                                        @if($gallery->category_id == $item->id)
                                            <option value="{{ $item->id }}" selected>{{$item->name}}</option>
                                        @else
                                            <option value="{{ $item->id }}">{{$item->name}}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Name*') }}</label>
                            <div class="col-md-9">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $gallery->name }}" required autocomplete="name" autofocus>
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="image" class="col-md-3 col-form-label text-md-right">{{ __('Image') }}</label>
                            <div class="col-md-9">
                                <input id="image" type="file" name="image">
                            </div>
                        </div>
                        <input type="hidden" name="gid" value="{{ $gallery->id }}">
                        <div class="form-group row mb-0">
                            <div class="col-md-12 offset-md-4">
                                <button type="submit" class="btn btn-outline-primary">
                                    Edit Image
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection