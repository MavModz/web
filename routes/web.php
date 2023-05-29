<?php

use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return Redirect::to('/Home');
// });
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
    return "clear";
});
Route::get('/sitemap.xml', 'SitemapController@index');
// Route::get('/','PublicPages@index');
Route::get('/search-product','PublicPages@search');
Route::get('/contact', function () {
    return view('contact');
});
// Route::get('/home', function () {
//     return abort(404);   
// });


Route::get('/', function () {
     return view('welcome');
 });
 
 Route::get('/register-user', function () {
     return view('auth.register');
 });
 Route::get('/contact-us', function () {
     return view('PublicPages.contactus');
 });
 
 
 Route::get('/career', function () {
     return view('career');
 });


Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
});

Route::get('/annantcare-product','PublicPages@annantcare');
Route::get('/aloracure-products','PublicPages@aloracure');
Route::get('/search-gallery','PublicPages@visual');
Route::get('/{data}','PublicPages@index');
Route::post('/enquiry/store','EnquirysController@store');
 Route::post('/home/users/add/store', 'UsersController@store');

Route::get('/lms/login','Auth\LoginController@showLoginForm')->name('login');
Route::post('/lms/login','Auth\LoginController@login');

Route::group(['middleware' => 'auth'],function(){
    Route::post('/logout','Auth\LoginController@logout');

    //Home Routes...
    Route::get('/lms/home', 'HomeController@index')->name('home');
    Route::get('/home/enquiries', 'EnquirysController@view');

    //Settings Routes...
    Route::get('/home/settings', 'HomeController@settings');
    Route::post('/home/settings/store', 'HomeController@store');
    
    //Category Routes...
    Route::get('/home/all/pdf', 'CategoriesController@pdfnew');
    Route::get('/home/categories/add', 'CategoriesController@new');
    Route::post('/home/categories/add/store', 'CategoriesController@store');
    Route::get('/home/categories/view', 'CategoriesController@view');
    Route::get('/home/categories/edit/{cid}', 'CategoriesController@edit');
    Route::post('/home/categories/update', 'CategoriesController@update');
    Route::get('/home/categories/change-status/{cid}', 'CategoriesController@changestatus');

    //Product Routes...
    Route::get('/home/products/add', 'ProductsController@new');
    Route::post('/home/products/add/store', 'ProductsController@store');
    Route::get('/home/products/view', 'ProductsController@view');
    Route::get('/home/products/edit/{pid}', 'ProductsController@edit');
    Route::post('/home/products/update', 'ProductsController@update');
    Route::get('/home/products/change-status/{pid}', 'ProductsController@changestatus');
    Route::post('/home/products/view/import', 'ProductsController@import');
    Route::post('/home/products/view/search', 'ProductsController@search');

    //User Routes...
    Route::get('/home/users/add', 'UsersController@new');
   
    Route::get('/home/users/view', 'UsersController@view');
    Route::get('/home/users/change-status/{pid}', 'UsersController@changestatus');

    //Division Routes...
    Route::get('/home/division/add', 'DivisionsController@index');
    Route::post('/home/division/add/store', 'DivisionsController@store');
    Route::get('/home/division/change-status/{did}', 'DivisionsController@changestatus');
    Route::get('/home/division/edit/{did}', 'DivisionsController@edit');
    Route::post('/home/division/update', 'DivisionsController@update');

    //Pages Routes...
    Route::get('/home/pages/add', 'PagesController@new');
    Route::post('/home/pages/add/store', 'PagesController@store');
    Route::get('/home/pages/view', 'PagesController@view');
    Route::get('/home/pages/edit/{pid}', 'PagesController@edit');
    Route::post('/home/pages/update', 'PagesController@update');
    Route::get('/home/pages/change-status/{pid}', 'PagesController@changestatus');

//visual Routes...
Route::get('/home/visual/add', 'VisualController@create');
Route::post('/home/visual/add/store', 'VisualController@store');
 Route::get('/home/visual/view', 'VisualController@show');
  Route::get('/home/visual/edit/{id}', 'VisualController@edit');
  Route::get('/home/visual/delete/{id}', 'VisualController@destroy');
  Route::post('/home/visual/update/{id}', 'VisualController@update')->name('/home.visual.update');

    //Gallery Routes...
    Route::get('/home/gallery/add', 'GallerysController@new');
    Route::post('/home/gallery/add/store', 'GallerysController@store');
    Route::get('/home/gallery/view', 'GallerysController@view');
    Route::get('/home/gallery/edit/{gid}', 'GallerysController@edit');
    Route::post('/home/gallery/update', 'GallerysController@update');
    Route::get('/home/gallery/change-status/{gid}', 'GallerysController@changestatus');
    
    //Blog Routes...
    Route::get('/home/blogs/add', 'BlogsController@new');
    Route::post('/home/blogs/add/store', 'BlogsController@store');
    Route::get('/home/blogs/view', 'BlogsController@view');
    Route::get('/home/blogs/edit/{pid}', 'BlogsController@edit');
    Route::post('/home/blogs/update', 'BlogsController@update');
    Route::get('/home/blogs/change-status/{bid}', 'BlogsController@changestatus');

    //My Profile Routes...
    Route::get('/home/profile', 'UsersController@profile');
    Route::post('/home/profile/update', 'UsersController@updateprofile');
    Route::post('/home/profile/change-password', 'UsersController@changepassword');
});