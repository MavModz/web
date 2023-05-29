@extends('layouts.app')
@section('meta_title','The Best PCD in Tricity')
@section('meta_keywords',$page->meta_keyword)
@section('meta_description','Best PCD in Tricity, Pramiscure Pharmaceuticals is now here. Providing the best service, especially for you.')
@section('meta_image')
    @if($page->image)
        content="{{ Request::root() }}/storage/{{$page->image}}"
    @else
        content="{{ Request::root() }}/images/logo-2.png"
    @endif
@endsection
@section('content') 
<!--@if($page->image)-->
<!--    <img src="/storage/{{$page->image}}" alt="">-->
<!--@endif-->
<div class="content">
            <?php
                echo html_entity_decode($page->description);
            ?>
        </div>
@endsection