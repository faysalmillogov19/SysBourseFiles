@extends("layouts.dashroad")
@section("content")
 <!-- Content Header (Page header) -->
 <div class="col-8">

        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-dark">
              <div class="card-header ">
                <h3 class="card-title">Modifier Attribution <small></small></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" id="quickForm" method="POST" action="/dossier/update" enctype="multipart/form-data" >
				  {{ csrf_field() }}
					<input type="hidden" name="dossier_id" value="{{$my_request->dossier_id}}">
					<input type="hidden" name="attribtion_id" value="{{$my_request->attribution_id}}">
					<input type="hidden" name="candidat_id" value="{{$my_request->candidat}}">
					
					<div class="card-body row dossierPart">
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Moyenne Semestre1 *</label>
						<input type="number" name="moyenne" min="0" step="0.001" class="select2 form-control"  value="{{ $my_request->moyenne}}" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Moyenne Semestre2 *</label>
						<input type="number" name="moyenne2" min="0" step="0.001" class="select2 form-control"  value="{{ $my_request->moyenne2}}" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Niveau*</label>
						<select name="niveau_etude_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->niveau_etude_id}}" >{{ $my_request->libelle_niveau}}</option>
							@endif
								<option ></option>
							@foreach($niveaux as $niveau)
								<option value="{{$niveau->id}}">{{$niveau->libelle_niveau}}</option>
							@endforeach
						</select>							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Filiere*</label>
						<select name="filiere_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->filiere_id}}" >{{ $my_request->libelle_filiere}}</option>
							@endif
								<option ></option>
							@foreach($filieres as $filiere)
								<option value="{{$filiere->id}}">{{$filiere->libelle_filiere}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Structure / UFR*</label>
						<select name="structure_universite_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->structure_universite_id}}" >{{ $my_request->nom_structure}}</option>
							@endif
								<option ></option>
							@foreach($structures as $structure)
								<option value="{{$structure->id}}">{{$structure->nom_structure}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Universite*</label>
						<select name="universite_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->universite_id}}" >{{ $my_request->nom_universite}}</option>
							@endif
								<option ></option>
							@foreach($universites as $universite)
								<option value="{{$universite->id}}">{{$universite->nom_universite}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Annee academique*</label>
						<select name="annee_academique_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->annee_academique_id}}" >{{date('Y',strtotime($my_request->debut_annee)).'-'.date('Y',strtotime($my_request->fin_annee))}}</option>
							@endif
							<option disabled></option>
							@foreach($annees as $annee)
								<option value="{{$annee->id}}">{{date('Y',strtotime($annee->debut_annee)).'-'.date('Y',strtotime($annee->fin_annee))}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Types Bourses*</label>
						<select name="bourse_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{$my_request->bourse_id}}" >{{ $my_request->libelle_bourse}}</option>
							@endif
							<option disabled></option>
							@foreach($bourses as $bourse)
								<option value="{{$bourse->id}}">{{$bourse->libelle_bourse}}</option>
							@endforeach
							
						</select>							
					  </div>
					   
					
					</div>
					<hr/>
					<div class="card-body row candidatPart">
						
						<hr/>
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Numéro de l'attestation*</label>
						<input name="numero_attestation" class="select2 form-control" value="{{ $my_request->numero_attestation}}"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Statut </label>
						<input type="text" name="statut" class="select2 form-control" data-dropdown-css-class="select2-purple" style="width: 100%;" >
							
					  </div>
					
					 					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Types Attribution*</label>
						<select name="type_attribution_id" class="select2 form-control"    data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
								<option ></option>
							@foreach($attributions as $attribution)
								<option value="{{$attribution->id}}">{{$attribution->libelle_attribution}}</option>
							@endforeach
						</select>							
					  </div>
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Nature Bourse*</label>
						<select name="nature_bourse_id" class="select2 form-control"    data-dropdown-css-class="select2-purple" style="width: 100%;" required>
						
								<option ></option>
							@foreach($nature_bourses as $nature_bourse)
								<option value="{{$nature_bourse->id}}">{{$nature_bourse->libelle_nature}}</option>
							@endforeach
						</select>							
					  </div-->
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Clé*</label>
						<input name="cle" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div-->
					  
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Observation </label>
						<input name="observation" class="select2 form-control"  value="{{ $my_request->observation}}" data-dropdown-css-class="select2-purple" style="width: 100%;" >
							
					  </div>
					  
					   <div class="form-group col-6">
						<label for="exampleInputEmail1">Decision </label>
						<input name="decision" class="select2 form-control" value="{{ $my_request->decision}}" data-dropdown-css-class="select2-purple" style="width: 100%;" >
							
					  </div>
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Mode Paiement*</label>
						<select name="mode_paiement" class="select2 form-control"    data-dropdown-css-class="select2-purple" style="width: 100%;" required>
						
								<option ></option>
							@foreach($mode_paiements as $mode_paiement)
								<option value="{{$mode_paiement->id}}">{{$mode_paiement->libelle_mode}}</option>
							@endforeach
						</select>							
					  </div-->
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Fin Etude*</label>
						<select name="fin_etude" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
								<option ></option>
							@foreach($annees as $annee)
								<option value="{{$annee->id}}">{{date('Y',strtotime($annee->debut_annee)).'-'.date('Y',strtotime($annee->fin_annee))}}</option>
							@endforeach
						</select>	
					  </div-->
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Debut Etude*</label>
						<select name="debut_etude" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->annee_academique_id}}" >{{date('Y',strtotime($my_request->debut_annee)).'-'.date('Y',strtotime($my_request->fin_annee))}}</option>
							@endif
								<option ></option>
							@foreach($annees as $annee)
								<option value="{{$annee->id}}">{{date('Y',strtotime($annee->debut_annee)).'-'.date('Y',strtotime($annee->fin_annee))}}</option>
							@endforeach
						</select>	
					  </div-->
					  	
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Date Effet*</label>
						<input type="date" name="date_effet" class="select2 form-control"  data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div-->
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Photo*</label>
						<input type="file" name="photo" class="select2 form-control"  data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div-->
					  
					  
									  
					  					
					</div>
										
                  
                
                                
				
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-dark float-right">Suivant</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
            </div>
          <!--/.col (left) -->
          <!-- right column -->
         
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
</div>
@endsection