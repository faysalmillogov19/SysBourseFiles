@extends("layouts.dashroad")
@section("content")

      <div class="row">
	  	  
        <div class="col-12">
          
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
					  <th>Num Pièce Identité</th>
					  <th>Nom & Prenom</th>
					  <th>Sexe</th>
					  <th>Date naissance</th>
					  <th>Telephone</th>
					  <!--th>Nom Pere</th>
					  <th>Nom Mere</th>
					  <th>Profession père</th>
					  <th>Profession mère</th-->
					  <th>Actions</th>
					</tr>
					
                </thead>
                <tbody>
					@foreach($my_request as $request)
					<tr>
						<!--td>{{ $request->id}}</td-->
						<td>{{ $request->num_piece_identite}}</td>
						<td>{{ $request->nom_etudiant}} {{ $request->prenom_etudiant}}</td>
						<td>{{ $request->sexe}}</td>
						<td>{{ $request->date_naiss_etudiant}}</td>
						<td>{{ $request->telephone}}</td>
						<!--td>{{ $request->nom_pere}}</td>
						<td>{{ $request->nom_mere}}</td>
						<td>{{ $request->profession_pere}}</td>
						<td>{{ $request->profession_mere}}</td-->
						
						<td>	
						<span class="table-update">
							<a type="button" href="/newattribtion/form/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Attribuer</a>
						</span>
						<span class="table-update">
							<a type="button" href="/dossier/candidat/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Dossiers</a>
						</span>
						<span class="table-update">
							<a type="button" href="/candidat/form/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Modifier</a>
						</span>
						<span class="table-remove">
							<a type="button" href="#" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Supprimer</a>
						</span>
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