@extends('layouts.app')
@section('meta_title','')
@section('meta_keywords','')
@section('meta_description','')

@section('content')


<section class="hero desktop-pdding">
<div class="container">
<div class="row">
<div class="col-md-6 mx-auto text-center fadeInLeft wow" style="visibility: visible; animation-name: fadeInLeft;">
<h1 class="text-capitalize white mb-md-0"><b>Aloracure Product</b></h1>


</div>
</div>
</div>
</section>
<br>

<div class="container cat">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="row">
               <div class="col-lg-1"></div>
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
                                     @foreach ($product as $item)
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
                   

                      
                    </div>
                    </div>
                    <div class="col-lg-1"></div>
                    </div></div></div></div>
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




