@extends("layouts.dashroad")
@section("content")
 <!-- Content Header (Page header) -->
 <div class="col-8">

        <div class="">
          <!-- left column -->
          <div class="">
            <!-- jquery validation -->
            <div class="card card-dark">
              <div class="card-header ">
                <h3 class="card-title">Information du compte <small></small></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" id="quickForm" method="POST" action="/compte/add" enctype="multipart/form-data" >
				  {{ csrf_field() }}
					<div class="card-body row candidatPart">
						
						<hr/>
						
						<input type="hidden" name="boursier" value="{{ $my_request->devient_id}}" >
						
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
															
					<div class="card-body row dossierPart">
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Numero du compte*</label>
						<input type="number" name="num_compte" min="0" step="0.001" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Libelle du compte*</label>
						<input type="text" name="libelle_compte" min="0" step="0.001" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Mode Paiement*</label>
						<select name="mode_paiement_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
						
							
								<option disabled></option>
							@foreach($mode_paiements as $mode_paiement)
								<option value="{{$mode_paiement->id}}">{{$mode_paiement->libelle_mode}}</option>
							@endforeach
						</select>							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Banque*</label>
						<select name="banque_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@foreach($banques as $banque)
								<option value="{{$banque->id}}">{{$banque->libelle_banque}}</option>
							@endforeach
						</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">RIB</label>
						<input name="rib" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" >
							
					  </div>
					  					
					</div>
					<hr/>
									
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