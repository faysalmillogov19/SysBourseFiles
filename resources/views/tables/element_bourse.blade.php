@extends("layouts.dashroad")
@section("content")

      <div class="row">
	  
	  
        <div class="col-12">
          
          <div class="card" >
            <div class="card-header">
              <h3 class="card-title"></h3>
				<span class=" float-left mb-3 mr-2 bg-dak">
					<a  class="" style="color:#4682B4;" href="/element_bourse/add/0">
						<i class="fas fa-plus fa-2x" aria-hidden="true"></i>
					</a>
				</span>

            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr>
					  <!--td>N</td-->
					  <th>Libelle</th>
					  <th>Niveau</th>
					  <th>Bourse</th>
					  <th>Nombre</th>
					  <th>Montant</th>
					  <th>debut</th>
					  <th>fin</th>
					  <th>Actions</th>
					</tr>
					
                </thead>
                <tbody>
					@foreach($my_request as $request)
					<tr>
						<!--td>{{ $request->id}}</td-->
						<td>{{ $request->libelle_element}}</td>
						<td>{{ $request->libelle_niveau}}</td>
						<td>{{ $request->libelle_bourse}}</td>
						<td>{{ $request->nombre}}</td>
						<td>{{ $request->montant}}</td>
						<td>{{ $request->date_debut_validite}}</td>
						<td>{{ $request->date_fin_validite}}</td>
						<td>	
							<span class="table-remove">
								<a type="button" href="/element_bourse/add/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Modifier</a>
							</span>
							<span class="table-remove">
								<a type="button" href="{{route('element_bourse.show', $request->id)}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Supprimer</a>
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