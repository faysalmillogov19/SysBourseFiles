@extends("layouts.dashroad")
@section("content")

      <div class="row">
	  
	  
        <div class="col-12">
		  <div class="card" >
            <div class="card-header">
              <h3 class="card-title"></h3>
				<span class="table-add float-left mb-3 mr-2 bg-dak" ><!-- "myTable"   -->
					<a  type="button" class="" style="color:#4682B4;">Ajouter
						<i class="fas fa-add fa-2x" aria-hidden="true"></i>
					</a>
				</span>

            </div>
            <!-- /.card-header -->
            <div class="card-body" id="myTable">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr>
					  <!--td>N</td-->
					  <th>Année academique</th>					 
					  <th>Niveau</th>
					  <th>Type dossier</th>
					  <th>Actions</th>
					  <!--th>
						Actions
					  </th-->
					</tr>
					
                </thead>
                <tbody>
					@foreach($my_request as $request)
					<tr>
						<!--td>{{ $request->id}}</td-->
						<td>{{date('Y',strtotime($request->debut_annee)).'-'.date('Y',strtotime($request->fin_annee))}}</td>
						<td>{{ $request->libelle_niveau}}</td>
						<td>{{ $request->libelle_type_dossier}}</td>
						<td>
							<span>
								{{ csrf_field() }}
								<a type="button" href="/attribtion/form/{{$request->candidat_id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Ajouter</a>
							</span>
							<!--form class="table-remove">
								<a type="button" href="{{route('requette.show', '222')}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Supprimer</a>
							</span-->
							<!--span>
								{{ csrf_field() }}
								<a type="button" href="/dossier/form/{{$request->dossier_id.'@'.$request->annee_academique_id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Inscription</a>
							</span-->
							<span>
								{{ csrf_field() }}
								<a type="button" href="/dossier/form/{{$request->dossier_id.'@'.$request->annee_academique_id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Modifier</a>
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