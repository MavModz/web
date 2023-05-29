@extends('layouts.app')
@section('meta_title','contactus')
@section('meta_keywords','contactus')
@section('meta_description','contactus')
@section('content') 
<section class="hero desktop-pdding">
<div class="container">
<div class="row">
<div class="col-md-6 mx-auto text-center fadeInLeft wow" style="visibility: visible; animation-name: fadeInLeft;">
<h1 class="text-capitalize white mb-md-0"><b>Contact Us</b></h1>

<nav aria-label="breadcrumb" class="mt-md-4 mt-3 sticky">
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="/home">Home</a></li>
	<li aria-current="page" class="breadcrumb-item text-capitalize">Contact Us</li>
</ol>
</nav>
</div>
</div>
</div>
</section>
<section class="pd50" id="contactus">
<div class="container">
<div class="row">
<div class="col-sm-5">
<div class="contactleft contactleftcolor">
<!--<h2 class="title">Drop A Line!</h2>
<p class="mb-0">Any Question or Remarks ? Just Write Us a Message!</p>-->
</div>

<div class="contactbottom">
<div class="contact-media mb-4 text-left">
<h5 class="text-white">Our Office:</h5>
<span>Plot No.-127, Ist Floor, Industrial Area, Phase - 1, Panchkula, Haryana 134113</span></div>

<div class="contact-media mb-4 text-left">
<h5 class="text-white">Reach Us:</h5>
<span>Phone: <a href="tel:+91-9467755655" class="text-white">+91-9467755655</a> <br>
Email: <a href="mailto:godasehealthcare@gmail.com" class="text-white">godasehealthcare@gmail.com</a></span></div>

<div class="contact-media mb-4 text-left">
<h5 class="text-white">Working Hours:</h5>
<span>Monday - Saturday: 9.30am To 6.30 pm</span></div>
</div>
</div>

<div class="col-sm-7 cotirespo con-pg-form">
  <h2 class="text-center">
    Enquire us
  </h2>
<form action="/enquiry/store" method="post">
    @csrf
 <div class="form-group row">
<div class="col-md-12"><input class="form-control" id="name" name="name" placeholder="Name*" required="" type="text"></div>
</div>

<div class="form-group row">
<div class="col-md-12"><input class="form-control" id="email" name="email" placeholder="Email*" required="" type="email"></div>
</div>

<div class="form-group row">
<div class="col-md-12"><input class="form-control" id="phone" name="phone" pattern="[789][0-9]{9}" placeholder="Phone no*" required="" type="text"></div>
</div>

<div class="form-group row">
<div class="col-md-12"><input class="form-control" id="location" name="location" placeholder="Location*" required="" type="text"></div>
</div>

<div class="form-group row">
<div class="col-md-12"><textarea class="form-control" name="message" placeholder="Message*" required=""></textarea></div>
</div>

<div class="form-group row mb-0">
  <input type="hidden" name="recaptcha" class="recaptcha" value="03AGdBq24iaGzEpZpa_sAV5cuIZctyQjpCqV0CzWu6p1HYCmEVJU2SXF-9vjYSbAgHxOLkRV7T3JiKqLVdrfjmOixni1hoQAM4XWin5W-2WGxh7nuAahtE_iOIJQUDHGGeUMBKlRsuhVmTDRKh8HmSm_YirKjKbiw_JizEiLioitGNdHWmlr6YerkW9XnpH7vS6Yf3LS2a4N4ZmyafRPNOavRULAMm-zwFFchORfFdvWhLp2aN6TJQyaOmCr_MCrup25KVjIXqf9MCpJ7xSDaFwCN4FGrUbm3giCIbY_j6uTHEpqmXk5wSza5CtwvYx6qHU4cXWy-QHLKELKYpbQkWBnMk2dDPwz-qjALoA84OqVeUQCSi-6JMVc9NEJDT1Ha1063wfKMfqsgE9CmfFvhO4D5CzvsHz0YmSpUjMkjgfhJwwTCXvnELQcByHcJZ6TFu3fUkiYUkQAA5">
<div class="col-md-6 offset-md-4"><button class="btn btn-outline-info" type="submit">Submit Enquiry</button></div>
</div>
</form>

</div>
<!-- row end --></div>
<br>
<div class="row">
    <div class="col-sm-12">
        <div class="contactmap"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3431.844421386103!2d76.83807981445975!3d30.666509195873655!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390f95ecd6fc88a9%3A0x58bc407fcaf4e26c!2sGodase%20Healthcare%20-%20PCD%20Pharma%20Franchise%20Company%20%7C%20Pharma%20Franchise%20For%20General%20Range!5e0!3m2!1sen!2sin!4v1623932168638!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
</div>
    </div>
</div>
<!--container end --></section>
@endsection