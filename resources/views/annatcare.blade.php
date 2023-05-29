@extends('layouts.app')
@section('meta_title','')
@section('meta_keywords','')
@section('meta_description','')

@section('content')


<section class="hero desktop-pdding">
<div class="container">
<div class="row">
<div class="col-md-6 mx-auto text-center fadeInLeft wow" style="visibility: visible; animation-name: fadeInLeft;">
<h1 class="text-capitalize white mb-md-0"><b>Annantcare Products</b></h1>


</div>
</div>
</div>
</section>
<br>
<div class="container">
   <div class="row">
     <div class="col-lg-12">
        <div class="tile" id="tile-1">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs nav-justified" role="tablist">
    <div class="slider"></div>
     <li class="nav-item">
        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><img src="/front_asset/assets/img/cream.png"> OINTMENT</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><img src="/front_asset/assets/img/hand-sanitizer.png"> LIQUID</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false"><img src="/front_asset/assets/img/capsule.png"> CAPSULES</a>
      </li>
    <li class="nav-item">
        <a class="nav-link" id="setting-tab" data-toggle="tab" href="#setting" role="tab" aria-controls="setting" aria-selected="false"><img src="/front_asset/assets/img/pills (1).png"> TABLETS</a>
      </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
        
        
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
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
      
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
      
      
  </div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
      
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
                                     @foreach ($productss as $item)
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
  <div class="tab-pane fade" id="setting" role="tabpanel" aria-labelledby="setting-tab">
      
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
                                     @foreach ($productsss as $item)
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

</div> 
     </div>  
   </div>  
</div>

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




