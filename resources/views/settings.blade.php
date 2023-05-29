@extends('layouts.header')
@section('title','Settings')
@section('content')
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Settings</div>
                <div class="card-body">
                    <form method="POST" action="{{ url('/home/settings/store') }}">
                        @csrf
                        @if (count($errors) > 0)
                            <div class = "alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <div class="form-group row">
                            <label for="homepage" class="col-md-4 col-form-label text-md-right">{{ __('Welcome Page Code') }}</label>
                            <div class="col-md-8">
                                <textarea name="homepage" id="homepage">{{ Setting::getsettings('homepage') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="welcome_metatitle" class="col-md-4 col-form-label text-md-right">{{ __('Welcome - Meta Title*') }}</label>
                            <div class="col-md-8">
                                <textarea id="welcome_metatitle" class="form-control" name="welcome_metatitle" required>{{ Setting::getsettings('welcome_metatitle') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="welcome_metakeyword" class="col-md-4 col-form-label text-md-right">{{ __('Welcome - Meta Keyword*') }}</label>
                            <div class="col-md-8">
                                <textarea id="welcome_metakeyword" class="form-control" name="welcome_metakeyword" required>{{ Setting::getsettings('welcome_metakeyword') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="welcome_metadescription" class="col-md-4 col-form-label text-md-right">{{ __('Welcome - Meta Description*') }}</label>
                            <div class="col-md-8">
                                <textarea id="welcome_metadescription" class="form-control" name="welcome_metadescription" required>{{ Setting::getsettings('welcome_metadescription') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="address" class="col-md-4 col-form-label text-md-right">{{ __('Address*') }}</label>
                            <div class="col-md-8">
                                <textarea id="address" class="form-control" name="address" required>{{ Setting::getsettings('address') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="contactno" class="col-md-4 col-form-label text-md-right">{{ __('Contact No.*') }}</label>
                            <div class="col-md-8">
                                <input id="contactno" type="text" class="form-control @error('contactno') is-invalid @enderror" name="contactno" value="{{ Setting::getsettings('contactno') }}" required autocomplete="contactno">
                                @error('contactno')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Email*') }}</label>
                            <div class="col-md-8">
                                <input id="email" type="text" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ Setting::getsettings('email') }}" required autocomplete="email">
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="maps" class="col-md-4 col-form-label text-md-right">{{ __('Map*') }}</label>
                            <div class="col-md-8">
                                <textarea id="maps" class="form-control" name="maps" required>{{ Setting::getsettings('maps') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="footer" class="col-md-4 col-form-label text-md-right">{{ __('Footer*') }}</label>
                            <div class="col-md-8">
                                <textarea id="footer" class="form-control" name="footer" required>{{ Setting::getsettings('footer') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="facebook" class="col-md-4 col-form-label text-md-right">{{ __('Facebook') }}</label>
                            <div class="col-md-8">
                                <textarea id="facebook" class="form-control" name="facebook">{{ Setting::getsettings('facebook') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="twitter" class="col-md-4 col-form-label text-md-right">{{ __('Twitter') }}</label>
                            <div class="col-md-8">
                                <textarea id="twitter" class="form-control" name="twitter">{{ Setting::getsettings('twitter') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="instagram" class="col-md-4 col-form-label text-md-right">{{ __('Instagram') }}</label>
                            <div class="col-md-8">
                                <textarea id="instagram" class="form-control" name="instagram">{{ Setting::getsettings('instagram') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="linkedin" class="col-md-4 col-form-label text-md-right">{{ __('Linkedin') }}</label>
                            <div class="col-md-8">
                                <textarea id="linkedin" class="form-control" name="linkedin">{{ Setting::getsettings('linkedin') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="youtube" class="col-md-4 col-form-label text-md-right">{{ __('Youtube') }}</label>
                            <div class="col-md-8">
                                <textarea id="youtube" class="form-control" name="youtube">{{ Setting::getsettings('youtube') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="js" class="col-md-4 col-form-label text-md-right">{{ __('JS Code') }}</label>
                            <div class="col-md-8">
                                <textarea name="js" id="js">{{ Setting::getsettings('js') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-outline-primary">
                                    Update Settings
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
@section('JS')
<script src="https://cdn.ckeditor.com/4.15.0/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace( 'homepage',{           
        fullPage: true,
        allowedContent: true,
        autoGrow_onStartup: true,
        enterMode: CKEDITOR.ENTER_BR
    });
    CKEDITOR.replace( 'js',{           
        fullPage: true,
        allowedContent: true,
        autoGrow_onStartup: true,
        enterMode: CKEDITOR.ENTER_BR
    });
</script>
@endsection