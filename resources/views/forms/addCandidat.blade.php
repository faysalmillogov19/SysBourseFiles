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
                <h3 class="card-title">Nouveau Candidat <small></small></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" id="quickForm" method="POST"  @if($my_request) action="/candidat/add/{{$my_request->id}}" @else action="/candidat/add/0"  @endif>
				  {{ csrf_field() }}
					<div class="card-body row candidatPart">
						
						<hr/>
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Numéro de la pièce d'identité*</label>
						<input name="num_piece_identite" class="select2 form-control" @if($my_request) value="{{ $my_request->num_piece_identite}}" @endif placeholder="Num pièce" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Telepone*</label>
						<input type="tel" name="telephone" class="select2 form-control" @if($my_request) value="{{ $my_request->telephone}}" @endif placeholder="telepone" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Nom*</label>
						<input name="nom_etudiant" class="select2 form-control" @if($my_request) value="{{ $my_request->nom_etudiant}}" @endif placeholder="Nom" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Prenom*</label>
						<input name="prenom_etudiant" class="select2 form-control" @if($my_request) value="{{ $my_request->prenom_etudiant}}" @endif placeholder="Prenom" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					
					
					
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Date de naissance*</label>
						<input type="date" name="date_naiss_etudiant" class="select2 form-control" @if($my_request) value="{{date('Y-m-d',strtotime($my_request->date_naiss_etudiant))}}" @endif placeholder="Nom" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Sexe*</label>
						<select name="sexe" class="select2 form-control"  placeholder="sexe" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
						@if($my_request)
							<option value="{{ $my_request->sexe}}" >{{ $my_request->sexe}}</option>
						@endif
							<option disabled></option>
							<option value="MASCULIN">MASCULIN</option>
							<option value="FEMININ">FEMININ</option>
						<select>
							
					  </div>
						
						
					  
					  					
					</div>
					
					<hr/>
					
					<div class="card-body row dossierPart">
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Nom du Père </label>
						<input name="nom_pere" class="select2 form-control"  placeholder="" data-dropdown-css-class="select2-purple" style="width: 100%;" @if($my_request) value="{{ $my_request->nom_pere}}" @endif >
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Profession du père </label>
						<input  name="profession_pere" class="select2 form-control"  placeholder="" data-dropdown-css-class="select2-purple" style="width: 100%;" @if($my_request) value="{{$my_request->profession_pere}}" @endif >
							
					  </div>
																		
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Nom de la Mère</label>
						<input name="nom_mere" class="select2 form-control"  placeholder="" data-dropdown-css-class="select2-purple" style="width: 100%;" @if($my_request) value="{{ $my_request->nom_mere}}" @endif >
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Profession de la Mère</label>
						<input  name="profession_mere" class="select2 form-control"  placeholder="" data-dropdown-css-class="select2-purple" style="width: 100%;" @if($my_request) value="{{$my_request->profession_mere}}" @endif >
							
					  </div>
					
						 <div class="form-group col-6">
							<label for="exampleInputEmail1">Revenu Parent</label>
							<input type="number" min="0" name="revenu_parent" class="select2 form-control" @if($my_request) value="{{ $my_request->telephone}}" @endif placeholder="Revenu Parent" data-dropdown-css-class="select2-purple" style="width: 100%;" >
								
						  </div>
						
						  <div class="form-group col-6">
							<label for="exampleInputEmail1">Nombre de charges</label>
							<input name="nbre_charges" type="number" min="0" class="select2 form-control" @if($my_request) value="{{ $my_request->nom_etudiant}}" @endif placeholder="Nombre de charges" data-dropdown-css-class="select2-purple" style="width: 100%;" >
								
						  </div>
					  
					</div>
					
					<hr/>
					
					<div class="card-body row dossierPart">
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Moyenne Semestre 1 *</label>
						<input type="number" name="moyenne" min="0" step="0.001" class="select2 form-control" @if($my_request) value="{{ $my_request->num_piece_identite}}" @endif placeholder="Moyenne" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Moyenne Semestre 2 *</label>
						<input type="number" name="moyenne2" min="0" step="0.001" class="select2 form-control" @if($my_request) value="{{ $my_request->num_piece_identite}}" @endif placeholder="Moyenne" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Niveau*</label>
						<select name="niveau_etude_id" class="select2 form-control"  placeholder="sexe" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->sexe}}" >{{ $my_request->sexe}}</option>
							@endif
								<option disabled></option>
							@foreach($niveaux as $niveau)
								<option value="{{$niveau->id}}">{{$niveau->libelle_niveau}}</option>
							@endforeach
						</select>							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Filiere*</label>
						<select name="filiere_id" class="select2 form-control"  placeholder="sexe" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->sexe}}" >{{ $my_request->sexe}}</option>
							@endif
								<option disabled></option>
							@foreach($filieres as $filiere)
								<option value="{{$filiere->id}}">{{$filiere->libelle_filiere}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Structure / UFR*</label>
						<select name="structure_universite_id" class="select2 form-control"  placeholder="sexe" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->sexe}}" >{{ $my_request->sexe}}</option>
							@endif
								<option disabled></option>
							@foreach($structures as $structure)
								<option value="{{$structure->id}}">{{$structure->nom_structure}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Universite*</label>
						<select name="universite_id" class="select2 form-control"  placeholder="sexe" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->sexe}}" >{{ $my_request->sexe}}</option>
							@endif
								<option disabled></option>
							@foreach($universites as $universite)
								<option value="{{$universite->id}}">{{$universite->nom_universite}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Annee academique*</label>
						<select name="annee_academique_id" class="select2 form-control"  placeholder="sexe" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->sexe}}" >{{ $my_request->sexe}}</option>
							@endif
								<option disabled></option>
							@foreach($annees as $annee)
								<option value="{{$annee->id}}">{{date('Y',strtotime($annee->debut_annee)).'-'.date('Y',strtotime($annee->fin_annee))}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Types Dossiers*</label>
						<select name="type_dossier_id" class="select2 form-control"  placeholder="sexe" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->sexe}}" >{{ $my_request->sexe}}</option>
							@endif
								<option disabled></option>
							@foreach($type_dossiers as $type_dossier)
								<option value="{{$type_dossier->id}}">{{$type_dossier->libelle_type_dossier}}</option>
							@endforeach
						</select>							
					  </div-->
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Types Bourses*</label>
						<select name="bourse_id" class="select2 form-control"  placeholder="sexe" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request)
								<option value="{{ $my_request->bourse_id}}" >{{ $my_request->libelle_bourse}}</option>
							@endif
							<option disabled></option>
							@foreach($bourses as $bourse)
								<option value="{{$bourse->id}}">{{$bourse->libelle_bourse}}</option>
							@endforeach
						</select>							
					  </div>
					   
					
					</div>
				
										
                  
                
                                
				
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-dark float-right">Enregistrer</button>
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