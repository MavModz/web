@extends('layouts.app')
@section('meta_title','Do you want to join the Best PCD in Tricity?')
@section('meta_description','If you wish to join the Best PCD in Tricity, then you are at the right place, Contact us and join us today!')
@section('content')

<section class="banner-section project-one-banner">
<div class="d-table">
<div class="d-tablecell">
<div class="container">
<div class="row">
<div class="col-12">
<div class="page-title">
<h2>our company <span>contact</span></h2>

<ul>
	<li><a href="index.html">home </a></li>
	<li>contact one</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<!-- End Page Banner Section --><!-- Start Contact Section -->

<section class="contact-section pt-100">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="Form-contact">
<div class="section-title-left">
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
</div>
</div>
</section>
<!-- End Contact Section --><!-- Start Get in Touch Section -->

<div class="get-in-touch-section pt-100">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="get-in-touch-wrapper">
<div class="row">
<div class="col-lg-6 col-md-6">
<div class="get-in">
<h3>Get in Touch</h3>

<p>To submit a question to the Medical Information department regarding an pharmaceutical, click HERE. You will be contacted via your preferred contact method. You may also call us at 8968041670.</p>

<ul class="social-links">
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
</ul>
</div>
</div>

<div class="col-lg-6 col-md-6">
<div class="contact-wrapper">
<h3>Contact Us</h3>

<ul class="contact-info">
	<li><a href="tel:8968041670">Call us 8968041670</a></li>

	<li>Open Hours Mon to Sat 9:00am to 6:00pm</li>
	<li>SCO-842,SF,NAC, CHANDIGARH, INDIA,160101<br>HEAD OFFICE - ANNANTA COMPLEX, TOWNLET BANA, SECTOR -25, PANCHKULA, HARYANA, INDIA,134116</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- End Get in Touch Section --><!-- End Map Section -->

<div class="maps-section ptb-100">
<div class="container">
<div class="row">
<div class="col-lg-12"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3431.8235129172767!2d76.8850758151299!3d30.667097881660002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xea7f6b592486c6c4!2zMzDCsDQwJzAxLjYiTiA3NsKwNTMnMTQuMiJF!5e0!3m2!1sen!2sin!4v1665210404212!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
</div>
</div>
</div>
@endsection