@extends('layouts.app')
@section('meta_title','Products by the Best ethical pharmaceutical company')
@section('meta_keywords',$category->meta_keyword)
@section('meta_description','Description- Pramiscure Pharmaceuticals, the Best ethical pharmaceutical company has the best and affordable products.')
@section('meta_image')
    @if($category->image)
        content="{{ Request::root() }}/storage/{{$category->image}}"
    @else
        content="{{ Request::root() }}/images/logo-2.png"
    @endif
@endsection
@section('content')
@if($category->image)
    <img src="/storage/{{$category->image}}">
@endif

<section class="hero desktop-pdding">
<div class="container">
<div class="row">
<div class="col-md-6 mx-auto text-center fadeInLeft wow" style="visibility: visible; animation-name: fadeInLeft;">
<h1 class="text-capitalize white mb-md-0"><b>{{ $category->name }}</b></h1>


</div>
</div>
</div>
</section>
<br>
<!--<h1 style="text-align: center">{{ $category->name }}</h1> -->
<div class="container cat">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="row">
                <div class="col-lg-2 col-md-12">
				<div class="sidebar-cat">
                    <h4 style="text-align: center">All Categories</h4>
                    <div class="list-group">
                        @foreach ($categories as $item)
                            @if($category->id == $item->id)
                                <a href="{{ $item->slug }}" class="list-group-item list-group-item-action active">
                                    {{ $item->name }}
                                </a>
                            @else
                                <a href="{{ $item->slug }}" class="list-group-item list-group-item-action">
                                    {{ $item->name }}
                                </a>
                            @endif
                        @endforeach
                    </div>
                </div>
				
				</div>
                <div class="col-lg-10 col-md-12">
                    <div class="row">
                      
                           <div class="table-responsives">
                            <table class="table table-bordered table-striped table-hover datatable datatable-User myTable">
                                <thead>
                                    <tr>
                                       
                                        
                                        <th>Image</th>
                                        <th>Name</th>
                                        <th>Composition</th>
                                         <th>Price</th>
                                        <th>Packing Size</th>
                                    </tr>
                                </thead>
                                <tbody>
                                     @foreach ($products as $item)
                                        <tr>
                                            
                                              <td>@if($item->image)
                                               <a href="#myModal" data-toggle="modal" data-gallery="example-gallery" class="" data-img-url="/{{$item->image}}" >
               <img src="/{{$item->image}}" width="100px">
                
            </a>
                                                        
                                              
                                              @else
                                              <img src="/public/front_asset/images/p-demo.jpg" width="100px">
                                              @endif</td>
                                            
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->composition }}</td>
                                            <td>₹ {{ $item->price }}</td>
                                            <td>
                                                {{ $item->packing }}   
                                            </td>
                                            
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    {{$products->Links()}}

                      
                    </div>
                    </div></div></div></div></div>
            </div>
            
        </div>
    </div>
</div>
<!-- Modal Product Image -->
<div id="myModal" class="modal fade cat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body text-center">
                <img class="" src="#"/ alt="Pramiscure">
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal Gallery Image -->
<div id="myModals" class="modal fade cat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body text-center">
                <img class="" src="#"/ alt="goadse">
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
@endsection




