@extends("layouts.dashroad")
@section("content")

      <div class="row">
	  	@include("forms.Paiementfilter")
        <div class="col-10">
          
          <div class="card" >
            <div class="card-header">
              <h3 class="card-title"></h3>
				<!--span class="table-add float-left mb-3 mr-2 bg-dak">
					<a href="/candidat/form/{{0}}" class="" style="color:#4682B4;">
						<i class="fas fa-plus fa-2x" aria-hidden="true"></i>
					</a>
				</span-->

            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr>
					  <th>Numero Attestation</th>
					  <th>Nom & Prenom</th>
					  <th>Sexe</th>
					  <th>Date naissance</th>
					  <th>Actions</th>
					</tr>
					
                </thead>
                <tbody>
					@foreach($my_request as $request)
					<tr>
						<!--td>{{ $request->id}}</td-->
						<td>{{ $request->numero_attestation_complet}}</td>
						<td>{{ $request->nom_etudiant}} {{ $request->prenom_etudiant}}</td>
						<td>{{ $request->sexe}}</td>
						<td>{{ $request->date_naiss_etudiant}}</td>						
						<td>	
						<span class="table-update">
							<a type="button" href="/addcompte/form/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Compte</a>
						</span>
						<!--span class="table-update">
							<a type="button" href="/addpaiement/form/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Payer</a>
						</span-->
						<span class="table-update">
							<a type="button" href="/addpaiementponctuel/form/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Paie Ponctuel</a>
						</span>
						<hr/>
						<span class="table-update">
							<a type="button" href="/ajustement/liste/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Ajustement</a>
						</span>
						
						<span class="table-update">
							<a type="button" href="/dossier/candidat/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Dossiers</a>
						</span>
						<!--span class="table-update">
							<a type="button" href="/candidat/form/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Modifier</a>
						</span-->
						<!--span class="table-remove">
							<a type="button" href="#" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Supprimer</a>
						</span-->
						</td>
					</tr>
					@endforeach
					
                
                </tbody>
                <tfoot>
                <tr>
                  
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
@endsection