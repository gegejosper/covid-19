<?php

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


Route::get('/thank-you', 'HomeController@thankyou');

Auth::routes();
Route::get('/log-in', 'HomeController@log_in');
Route::get('/', 'HomeController@log_in');
Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' =>'super_admin_auth','prefix' => 'super'], function(){
    Route::get('/dashboard', 'SuperAdminController@index');
    Route::get('/users', 'SuperAdminController@users');
    Route::get('/reports', 'SuperAdminController@reports');
    Route::get('/export', 'SuperAdminController@export');
    Route::post('/export/process', 'ExportController@export_process')->name('export_process');
    Route::get('/filter_report', 'SuperAdminController@filter_report')->name('filter_report_super');
    Route::get('/patient/export','ExportController@exportExcel');
    Route::post('/user/add', 'UserController@add_user_municipality')->name('add_user_municipality');
    Route::get('/user/delete/{user_id}', 'UserController@delete_user_municipality')->name('delete_user_municipality');
   
});

Route::group(['middleware' =>'admin_auth','prefix' => 'admin'], function(){
    Route::get('/dashboard', 'AdminController@index');
    Route::get('/patient', 'AdminController@patients');
    Route::get('/reports', 'AdminController@reports');
    Route::get('/report/brgy/{brgy}', 'AdminController@report_barangay');
    Route::get('/report/type/{type}', 'AdminController@report_type');

    Route::get('/users', 'UserController@view_users');
    Route::post('/user/add', 'UserController@add_user')->name('add_user');
    Route::get('/user/delete/{user_id}', 'UserController@delete_user')->name('delete_user');
    Route::get('/filter_report', 'AdminController@filter_report')->name('filter_report');
    Route::get('/pum', 'AdminController@pum');
    Route::get('/pui', 'AdminController@pui');
    Route::get('/quarantine', 'AdminController@quarantine');
    Route::get('/reports', 'AdminController@reports');
    Route::post('/patient/add', 'PatientController@add_patient')->name('add_patient');
    Route::get('/patient/view', 'PatientController@view_patients')->name('view_patients');
    Route::get('/patient/delete/{patient_id}', 'PatientController@delete_patient')->name('delete_patient');
    Route::get('/patient/view/{patient_id}', 'PatientController@view_patient')->name('view_patient');
    Route::get('/patient/complete/{patient_id}', 'PatientController@complete_quarantine')->name('complete_quarantine');
    Route::get('/patient/dead/{patient_id}', 'PatientController@mark_dead')->name('mark_dead');
    Route::get('/patient/positive/{patient_id}', 'PatientController@mark_positive')->name('mark_positive');
    Route::get('/patient/recovered/{patient_id}', 'PatientController@mark_recovered')->name('mark_recovered');
    Route::post('/patient/update', 'PatientController@patient_update')->name('patient_update');
    Route::get('/pum_search', 'PatientController@patient_search_pum')->name('patient_search_pum');
    Route::get('/pui_search', 'PatientController@patient_search_pui')->name('patient_search_pui');
    Route::get('/patient_search', 'PatientController@patient_search')->name('patient_search_pui');
    Route::get('/patient/export','ExportController@exportExcel');
    
    Route::get('/quarantine_search', 'PatientController@patient_search_quarantine')->name('patient_search_quarantine');

});

Route::group(['middleware' =>'brgy_auth','prefix' => 'brgy'], function(){
    Route::get('/dashboard', 'BrgyController@index');
    Route::get('/patient', 'BrgyController@patients');
    Route::get('/pum', 'BrgyController@pum');
    Route::get('/pui', 'BrgyController@pui');
    Route::get('/quarantine', 'BrgyController@quarantine');
});



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
