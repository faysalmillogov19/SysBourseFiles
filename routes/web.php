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

Route::get('/', function () {
    return view('welcome');
});

Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/requette','Requette');

});
Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/filter','Filter');

});
Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/mandatement','Mandatement');

});
Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/attribtion','AttributionC');
	Route::get('/attribtion/form/{id}','AttributionC@formulaire');
	Route::get('/newattribtion/form/{id}','AttributionC@nouvelleAttribution');
	Route::post('/attribtion/add','AttributionC@edit');
	Route::post('/newattribtion/add','AttributionC@editNouvelleAttribution');

});
Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/dossiers','DossierC');
	Route::get('/dossier/candidat/{id}','DossierC@listedossier');
	Route::get('/dossier/form/{id}','DossierC@detailsattribution');
	Route::post('/dossier/update','DossierC@updateAttribution');

});
Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/candidats','CandidatC');
	Route::get('/candidat/form/{id}','CandidatC@formulaire');
	Route::post('/candidat/add/{id}','CandidatC@edit');

});
Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/boursiers','BoursierC');
	Route::get('/addcompte/form/{id}','BoursierC@addCompteForms');
	Route::post('/compte/add','BoursierC@addCompte');
	//Route::post('/candidat/add/{id}','CandidatC@edit');

});

Route::group([  'middleware' =>['web']  ], function(){
    Route::resource('/ajustement','AjustementC');
    Route::get('/ajustement/liste/{id}','AjustementC@liste');
    Route::get('/ajustement/form/{id}','AjustementC@form');
});
Route::group([  'middleware' =>['web']  ], function(){
    Route::resource('/type_element_bourse','Type_element_bourseC');
	Route::get('/type_element_bourse/add/{id}','Type_element_bourseC@form');
});
Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/element_bourse','Element_bourseC');
	Route::get('/element_bourse/add/{id}','Element_bourseC@form');
});
Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/alertes','AlerteC');
	Route::get('/delete/alerte/{id}','AlerteC@deleteAlerte');
});


Route::group([  'middleware' =>['web']  ], function(){

	Route::get('/addpaiement/form/{id}','PaiementC@formPaiementNormal');
	Route::post('/paiement/add','PaiementC@addPaiementNormal');
	Route::get('/addpaiementponctuel/form/{id}','PaiementC@formPaiementPonctuel');
	Route::post('/paiementponctuel/add','PaiementC@addPaiementPonctuel');
	Route::post('/paiementponctuel/grouper','PaiementC@PaiementGroupe');

});
Route::group([  'middleware' =>['web']  ], function(){

    Route::resource('/dossiers','DossierC');
	
});
    