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
					  <!--th>N°</th-->
					  <th>Message</th>
					  <th>Niveau Alerte</th>
					  <th>Actions</th>
					</tr>
					
                </thead>
                <tbody>
					@foreach($my_request as $request)
					<tr>
						<!--td>{{ $request->id}}</td-->
						<td>{{ $request->content}}</td>
						<td>{{ $request->gravite}}</td>	
						<td>	
							<span class="table-remove">
								<a type="button" href="{{route('alertes.show',$request->id)}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Lu</a>
							</span>	
							<span class="table-remove">
								<a type="button" href="/delete/alerte/{{$request->id}}" class="btn btn-rounded btn-sm my-0 text-white" style="background-color:#4682B4;">Supprimer</a>
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