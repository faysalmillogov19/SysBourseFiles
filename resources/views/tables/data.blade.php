@extends("layouts.dashroad")
@section("content")

      <div class="row">
	  
		@include("forms.filter")
	  
        <div class="col-10">
          
          <div class="card" >
            <div class="card-header">
              <h3 class="card-title"></h3>
				<span class="table-add float-left mb-3 mr-2 bg-dak" id="printer">
					<a  class="" style="color:#4682B4;">
						<i class="fas fa-print fa-2x" aria-hidden="true"></i>
					</a>
				</span>

            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr>
					  <!--td>N</td-->
					  <th>Nom</th>
					  <th>Prenom</th>
					  <th>Sexe</th>
					  <th>Date naissance</th>
					  <th>Bourse</th>
					  <th>Annee</th>
					  <!--th>Debut annee academique</th>
					  <th>fin annee academique</th-->
					  <th>Moyenne</th>
					  <th>Universite</th>
					  <th>UFR</th>
					  <th>Filiere</th>
					  <th>Niveau</th>
					  <!--th>Cycle</th-->
					  <th>Type dossier</th>
					  <!--th>
						Actions
					  </th-->
					</tr>
					
                </thead>
                <tbody>
					@foreach($my_request as $request)
					<tr>
						<!--td>{{ $request->id}}</td-->
						<td>{{ $request->nom_etudiant}}</td>
						<td>{{ $request->prenom_etudiant}}</td>
						<td>{{ $request->sexe}}</td>
						<td>{{ $request->date_naiss_etudiant}}</td>
						<td>{{ $request->libelle_bourse}}</td>
						<td>{{ $request->annee}}</td>
						<!--td>{{ $request->debut_annee}}</td>
						<td>{{ $request->fin_annee}}</td-->
						<td>{{ $request->moyenne}}</td>
						<td>{{ $request->nom_universite}}</td>
						<td>{{ $request->nom_structure}}</td>
						<td>{{ $request->libelle_filiere}}</td>
						<td>{{ $request->libelle_niveau}}</td>
						<!--td>{{ $request->libelle_cycle}}</td-->
						<td>{{ $request->libelle_type_dossier}}</td>
						<!--td>	
						<span class="table-remove">
							<a type="button" href="{{route('requette.show','22')}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Modifier</a>
						</span>
						<span class="table-remove">
							<a type="button" href="{{route('requette.show', '222')}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Supprimer</a>
						</span>
						</td-->
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