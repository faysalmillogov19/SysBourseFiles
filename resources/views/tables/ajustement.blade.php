@extends("layouts.dashroad")
@section("content")

      <div class="row">
	  	  
        <div class="col-12">
          
          <div class="card" >
            <div class="card-header">
              <h3 class="card-title"></h3>
				<span class="table-add float-left mb-3 mr-2 bg-dak">
					<a href="/ajustement/form/{{$my_request->max('boursier_id')}}|0" class="" style="color:#4682B4;">
						<i class="fas fa-plus fa-2x" aria-hidden="true">AJOUTER</i>
					</a>
				</span>

            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
					<tr>
					  <th>Raison</th>
					  <th>Type ajustement</th>
					  <th>Durée</th>
					  <th>Montant</th>
					  <th>Année académique</th>
					  <th>Date effet</th>
					  <th>Actions</th>
					</tr>
					
                </thead>
                <tbody>
					@foreach($my_request->get() as $request)
					<tr>
						<!--td>{{ $request->id}}</td-->
						<td>{{ $request->raison}}</td>
						<td>{{ $request->libelle_ajustement}}</td>
						<td>{{ $request->duree}}</td>
						<td>{{ $request->montant}}</td>
						<td>{{date('Y',strtotime($request->debut_annee)).'-'.date('Y',strtotime($request->fin_annee))}}</td>
						<td>{{ $request->date_effet}}</td>						
						<td>	
							<span class="table-update">
								<a type="button" href="/ajustement/form/{{$request->boursier_id}}|{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Modifier</a>
							</span>
							<span class="table-remove">
								<a type="button" href="{{route('ajustement.show',$request->id)}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Supprimer</a>
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