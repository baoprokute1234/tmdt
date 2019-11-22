<?php
use Carbon\Traits\Rounding;

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

Route::get('/', function () {
    return view('welcome');
});
Route::get('/phonesharkstore',[
	'as'=>'index.getIndex',
	'uses'=>'ProductController@getIndex'
]);
Route::get('/phonesharkstore/products/{id}',[
	'as' => 'products.getProduct',
	'uses' => 'ProductController@getProduct'
]);
Route::get('/phonesharkstore/user',function(){
	return view('template.pages.user_inform');
});
Route::get('/sign-out',[
	'as' => 'signout.logout',
	'uses' => 'Auth\LoginController@logout'
]);
Route::get('/phonesharkstore/checkout',[
	'as' => 'checkout',
	'uses' => 'ProductController@showCheckout'
]);
Route::get('/phonesharkstore/about',[
	'as' => 'about',
	'uses' => 'ProductController@showAbout'
]);
Route::get('/phonesharkstore/contact',[
	'as' => 'contact',
	'uses' => 'ProductController@showContact'
]);
Route::get('/phonesharkstore/product/{id}',[
	'as' => 'product',
	'uses' => 'ProductController@getProduct'
]);

Route::post('/phonesharkstore/product/{id}/',[
	'as' => 'products.postRating',
	'uses' => 'ProductController@postRating'
]);

Route::get('/phonesharkstore/user',[
	'as' => 'user.inform',
	'uses' => 'UserController@showUserInform'
]);
Route::post('/phonesharkstore/user',[
	'as' => 'editUser',
	'uses' => 'UserController@editUser'
]);
Route::get('/phonesharkstore/user/uploadproduct',[
	'as' => 'uploadProduct',
	'uses' => 'UserController@uploadProduct'
]);

Route::post('/phonesharkstore/user/uploadproduct',[
	'as' => 'uploadProductSave',
	'uses' => 'UserController@uploadProductSave'
]);

Route::get('/sign-up',[
	'as' => 'signup.getSignUp',
	'uses' => 'Auth\RegisterController@getSignUp'
]);
Route::post('/sign-up',[
	'as' => 'signup.postSignUp',
	'uses' => 'Auth\RegisterController@postSignUp'
]);
Route::get('/sign-in',[
	'as'=> 'signin.getSignin',
	'uses' => 'Auth\LoginController@getSignin'
]);
Route::get('phonesharkstore/user/productuser',[
	'as' => 'productuser',
	'uses' => 'UserController@getProductUser'
]);
Route::post('/sign-in',[
	'as' => 'signin.postSignin',
	'uses' => 'Auth\LoginController@postSignin'
]);

Route::post('phonesharkstore/search',[
	'as' => 'search',
	'uses' => 'ProductController@getSearch'
]);
Route::post('phonesharkstore/search/price',[
	'as' => 'search-price',
	'uses' => 'ProductController@getSearchPrice'
]);

Route::get('phonesharkstore/categories/{id}',[
	'as'=>'categories.getCategories',
	'uses' => 'ProductController@getCategories'
]);

Route::get('phonesharkstore/order',[
	'as'=> 'order.getCart',
	'uses' => 'ProductController@getCart'
]);
Route::get('phonesharkstore/order/{pid}/user/{uid}',[
	'as'=> 'order.addToCart',
	'uses' => 'ProductController@addToCart'
]);
Route::post('phonesharkstore/order/',[
	'as'=> 'order.postAddToCart',
	'uses' => 'ProductController@postAddToCart'
]);

Route::get('phonesharkstore/order/remove/{id}',[
	'as'=> 'order.removeCart',
	'uses' => 'ProductController@removeCart'
]);

Route::post('phonesharkstore/product',[
	'as' => 'product.postComment',
	'uses' => 'ProductController@postComment'
]);

Route::get('phonesharkstore/order/create/',[
	'as'=> 'order.createOrder',
	'uses' => 'ProductController@createOrder'
]);

Route::get('phonesharkstore/user/history/', [
	'as'=> 'user.getHistory',
	'uses' => 'UserController@getHistory'
]);

Route::get('phonesharkstore/user/sellhistory/', [
	'as'=> 'sellhistory.getAllNotifications',
	'uses' => 'NotificationCotroller@getAllNotifications'
]);

Route::post('phonesharkstore/user/productuser/update',[
	'as' => 'products.update',
	'uses' => 'ProductController@updateProduct'
]);
Route::get('phonesharkstore/user/productuser/update/{id}',[
	'as' => 'products.show',
	'uses' => 'ProductController@showProductUser'
]);

Route::get('phonesharkstore/user/productuser/remove/{id}',[
	'as'=> 'products.remove',
	'uses' => 'ProductController@removeProduct'
]);

Route::get('phonesharkstore/user/notification/{id}',[
	'as'=> 'notification.getNotification',
	'uses' => 'NotificationCotroller@getNotification'
]);

Route::get('phonesharkstore/user/notification/comfirm/{id}',[
	'as'=> 'notification.getComfirm',
	'uses' => 'NotificationCotroller@getComfirm'
]);
Route::get('phonesharkstore/user/notification/remove/{id}',[
	'as'=> 'notification.getRemoveNote',
	'uses' => 'NotificationCotroller@getRemoveNote'
]);
Route::get('phonesharkstore/user/history/remove/{id}',[
	'as'=> 'history.getRemoveOrder',
	'uses' => 'ProductController@getRemoveOrder'
]);

Route::get('posts', 'HomeController@posts')->name('posts');

Route::post('posts', 'HomeController@postPost')->name('posts.post');

Route::get('posts/{id}', 'HomeController@show')->name('posts.show');

Route::post('phonesharkstore/postMail',[
	'as'=> 'postMail.postMail',
	'uses' => 'UserController@postMail'
]);

Route::get('register/verify/{code}', 'Auth\RegisterController@verify');

// this source for admin
Route::post('phsh/admin/login',[
	'as'=>'admin.login.postAdminLogin',
	'uses'=>'AdminController@postAdminLogin'
]);
Route::get('phsh/admin/logout',[
	'as'=>'admin.getAdminLogout',
	'uses'=>'AdminController@getAdminLogout'
]);
Route::get('phsh/admin/index',[
	'as'=>'admin.index.getIndex',
	'uses'=>'AdminController@getIndex'
]);
Route::get('phsh/admin/login',[
	'as'=>'admin.index.getLogin',
	'uses'=>'AdminController@getLogin'
]);
Route::get('phsh/admin/lock/{id}',[
	'as'=>'admin.index.getLock',
	'uses'=>'AdminController@getLock'
]);
Route::get('phsh/admin/user-detail/{id}',[
	'as'=>'admin.index.getDetail',
	'uses'=>'AdminController@getDetail'
]);
Route::get('phsh/admin/product-list',[
	'as'=>'admin.index.getProductList',
	'uses'=>'AdminController@getProductList'
]);
Route::get('phsh/admin/user-list',[
	'as'=>'admin.index.getUserList',
	'uses'=>'AdminController@getUserList'
]);