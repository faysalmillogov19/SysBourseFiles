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
                <h3 class="card-title">Nouvelle Attribution<small></small></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" id="quickForm" method="POST" action="/newattribtion/add" enctype="multipart/form-data" >
				  {{ csrf_field() }}
					<div class="card-body row candidatPart">
						
						<hr/>
						
						<input type="hidden" name="candidat_id" value="{{ $my_request->candidat_id}}" >
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Numéro de la pièce d'identité*</label>
						<input name="num_piece_identite" class="select2 form-control"  value="{{ $my_request->num_piece_identite}}"  disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Telepone*</label>
						<input type="tel" name="telephone" class="select2 form-control" value="{{ $my_request->telephone}}" disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Nom*</label>
						<input name="nom_etudiant" class="select2 form-control"  value="{{ $my_request->nom_etudiant}}"  disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Prenom*</label>
						<input name="prenom_etudiant" class="select2 form-control"  value="{{ $my_request->prenom_etudiant}}"  disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Date de naissance*</label>
						<input name="date_naiss_etudiant" type="date" class="select2 form-control"  value="{{date('Y-m-d',strtotime($my_request->date_naiss_etudiant))}}"  disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Sexe*</label>
						<select name="sexe" class="select2 form-control"  placeholder="sexe" data-dropdown-css-class="select2-purple" disabled style="width: 100%;" required>
							<option value="{{ $my_request->sexe}}" >{{ $my_request->sexe}}</option>
							
						</select>
												
					  </div>					  
					  					
					</div>
					
					<hr/>
											

					
					<hr/>
					
					<div class="card-body row dossierPart">
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Moyenne Semestre1 *</label>
						<input type="number" name="moyenne" min="0" step="0.001" class="select2 form-control" disabled value="{{ $my_request->moyenne}}" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Moyenne Semestre2 *</label>
						<input type="number" name="moyenne2" min="0" step="0.001" class="select2 form-control" disabled value="{{ $my_request->moyenne2}}" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Niveau*</label>
						<select name="niveau_etude_id" class="select2 form-control"  disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->niveau_etude_id}}" >{{ $my_request->libelle_niveau}}</option>
							@endif
								<option disabled></option>
							@foreach($niveaux as $niveau)
								<option value="{{$niveau->id}}">{{$niveau->libelle_niveau}}</option>
							@endforeach
						</select>							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Filiere*</label>
						<select name="filiere_id" class="select2 form-control"  disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->filiere_id}}" >{{ $my_request->libelle_filiere}}</option>
							@endif
								<option disabled></option>
							@foreach($filieres as $filiere)
								<option value="{{$filiere->id}}">{{$filiere->libelle_filiere}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Structure / UFR*</label>
						<select name="structure_universite_id" class="select2 form-control"  disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->structure_universite_id}}" >{{ $my_request->nom_structure}}</option>
							@endif
								<option disabled></option>
							@foreach($structures as $structure)
								<option value="{{$structure->id}}">{{$structure->nom_structure}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Universite*</label>
						<select name="universite_id" class="select2 form-control"  disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->universite_id}}" >{{ $my_request->nom_universite}}</option>
							@endif
								<option disabled></option>
							@foreach($universites as $universite)
								<option value="{{$universite->id}}">{{$universite->nom_universite}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Annee academique*</label>
						<select  class="select2 form-control"  disabled data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->annee_academique_id}}" >{{date('Y',strtotime($my_request->debut_annee)).'-'.date('Y',strtotime($my_request->fin_annee))}}</option>
							@endif
						</select>
							<input type="hidden" name="annee_academique_id" value="{{ $my_request->annee_academique_id}}">
					  </div>
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Types Dossiers*</label>
						<select name="type_dossier_id" class="select2 form-control" disabled   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->type_dossier_id}}" >{{ $my_request->libelle_type_dossier}}</option>
							@endif
								<option disabled></option>
							@foreach($type_dossiers as $type_dossier)
								<option value="{{$type_dossier->id}}">{{$type_dossier->libelle_type_dossier}}</option>
							@endforeach
						</select>							
					  </div-->
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Types Bourses*</label>
						<select name="bourse_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->bourse_id}}" >{{ $my_request->libelle_bourse}}</option>
							@endif
							
						</select>							
					  </div>
					   
					
					</div>
					<hr/>
					<div class="card-body row candidatPart">
						
						<hr/>
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Numéro de l'attestation*</label>
						<input name="numero_attestation" class="select2 form-control"    data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Statut</label>
						<input type="text" name="statut" class="select2 form-control" data-dropdown-css-class="select2-purple" style="width: 100%;" >
							
					  </div>
					
					 					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Types Attribution*</label>
						<select name="type_attribution_id" class="select2 form-control"    data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
								<option disabled></option>
							@foreach($attributions as $attribution)
								<option value="{{$attribution->id}}">{{$attribution->libelle_attribution}}</option>
							@endforeach
						</select>							
					  </div>
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Nature Bourse*</label>
						<select name="nature_bourse_id" class="select2 form-control"    data-dropdown-css-class="select2-purple" style="width: 100%;" required>
						
								<option disabled></option>
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
						<label for="exampleInputEmail1">Etat</label>
						<input name="etat" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" >
							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Observation</label>
						<input name="observation" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" >
							
					  </div>
					  
					   <div class="form-group col-6">
						<label for="exampleInputEmail1">Decision</label>
						<input name="decision" class="select2 form-control"  data-dropdown-css-class="select2-purple" style="width: 100%;" >
							
					  </div>
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Mode Paiement*</label>
						<select name="mode_paiement" class="select2 form-control"    data-dropdown-css-class="select2-purple" style="width: 100%;" required>
						
								<option disabled></option>
							@foreach($mode_paiements as $mode_paiement)
								<option value="{{$mode_paiement->id}}">{{$mode_paiement->libelle_mode}}</option>
							@endforeach
						</select>							
					  </div-->
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Debut Etude*</label>
						<input type="number" min="2016"  class="select2 form-control" value="{{date('Y',strtotime($my_request->debut_annee))}}" disabled   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
						<input type="hidden" name="debut_etude" value="{{date('Y',strtotime($my_request->debut_annee))}}">

						<!--select name="debut_etude" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->annee_academique_id}}" >{{date('Y',strtotime($my_request->debut_annee)).'-'.date('Y',strtotime($my_request->fin_annee))}}</option>
							@endif
								<option disabled></option>
							@foreach($annees as $annee)
								<option value="{{$annee->id}}">{{date('Y',strtotime($annee->debut_annee)).'-'.date('Y',strtotime($annee->fin_annee))}}</option>
							@endforeach
						</select-->	
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Fin Etude*</label>
						<input type="number" min="2016" name="fin_etude" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
						<!--select name="fin_etude" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
								<option disabled></option>
							@foreach($annees as $annee)
								<option value="{{$annee->id}}">{{date('Y',strtotime($annee->debut_annee)).'-'.date('Y',strtotime($annee->fin_annee))}}</option>
							@endforeach
						</select-->	
					  </div>
					  
					  	
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Date Effet*</label>
						<input type="date" name="date_effet" class="select2 form-control"  data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  <!--/div-->
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