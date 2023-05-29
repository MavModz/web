@extends('layouts.app')
@section('meta_title','Contact the best pharmaceuticals company in Chandigarh')
@section('meta_keywords','')
@section('meta_description','The best pharmaceuticals company in Chandigarh is now here to take all your troubles away. Contact us to know more')
@section('meta_image')
content="{{ Request::root() }}/images/logo-2.png"
@endsection
@section('content')

<section class="banner-section">
<div class="d-table">
<div class="d-tablecell">
<div class="container">
<div class="row">
<div class="col-12">
<div class="page-title page-title-two">
<h2>ABOUT OUR <span>contact</span></h2>

<ul>
	<li><a href="index-4.html">home </a></li>
	<li>contact two</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<!-- End Page Banner Section --><!-- Start Contact Section -->

<section class="contact-section contact-section-two">
<div class="container">
<div class="row">
<div class="col-lg-8">
<div class="Form-contact">
<div class="section-title-left home-page-four-section-title">
<h4>Message us</h4>

<h2><span>Drop us</span> message for any query</h2>
</div>

<form action="/enquiry/store" method="POST" id="formdata">
    @csrf
    <div class="row">
         <div class="col-lg-6">
             <div class="form-group">
               <label for="exampleInputEmail1">Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name" >
                 
           </div>
         </div>
         <div class="col-lg-6">
             <div class="form-group">
               <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" >
                 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
           </div>
         </div>
         <div class="col-lg-6">
             <div class="form-group">
               <label for="exampleInputEmail1">Phone</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="phone">
                
           </div>
         </div>
         <div class="col-lg-6">
             <div class="form-group">
               <label for="exampleInputEmail1">Subject</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="subject">
               
           </div>
         </div>
         <div class="col-lg-12">
             <div class="form-group">
               <label for="exampleInputEmail1">Message</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="message">
                 
           </div>
         </div>
    </div>
  

  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>

<div class="col-lg-4">
<div class="get-in-touch-section">
<div class="get-in">
<h4>contact us</h4>

<h3><span>Get in</span> Touch</h3>

<p>Pramiscure Pharmaceuticals is a trusted and well-acknowledged name in the PCD Pharma Franchise business. For any query or product information contact us right away.</p>

<ul class="contact-info">
	<li><a href="tel:+8968041670">Call us +8968041670</a></li>
	<li><a href="https://templates.envytheme.com/cdn-cgi/l/email-protection#e68f888089a6838b87948792c885898b"><span class="__cf_email__" data-cfemail="7f161119103f1a121e0d1e0b511c1012">pramiscure.pharmaceuticals@gmail.com</span></a></li>
	<li>Open Hours 09:00 am - 06:00 pm</li>
	<li>Co-operate office - SCO-842,SF,NAC, CHANDIGARH, INDIA,160101<br />
	HEAD OFFICE - ANNANTA COMPLEX, TOWNLET BANA, SECTOR -25, PANCHKULA, HARYANA, INDIA,134116</li>
</ul>

<h4>Follow on:</h4>

<ul class="social-links">
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</section>
<!-- End Contact Section --><!-- End Map Section -->

<div class="map-section"><iframe allowfullscreen="" height="450" loading="lazy" referrerpolicy="no-referrer-when-downgrade" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3431.8302931897997!2d76.88522691512989!3d30.66690698166017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5b97719142f5070b!2zMzDCsDQwJzAwLjkiTiA3NsKwNTMnMTQuNyJF!5e0!3m2!1sen!2sin!4v1664522004631!5m2!1sen!2sin" style="border:0;" width="600"></iframe></div>
@endsection