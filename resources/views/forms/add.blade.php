@extends("layouts.dashroad")
@section("content")
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Ajout</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
              <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-remove"></i></button>
            </div>
          </div>
          <!-- /.card-header -->
          <form class="card-body" method="post" action="{{route('data.store')}}">
		  {{csrf_field()}}
            <div class="row">
				@foreach($columns as $column)
					@if($identifiant!=$column->COLUMN_NAME)
						<div class="col-md-6">
							<div class="form-group">
							  <label>{{$column->COLUMN_NAME}}</label>
							  
							  <!--On gère les propriétés de la column en input-->
							  
							  <input 
									class="form-control select2" style="width: 100%;" 
									name="{{$column->COLUMN_NAME}}"									
									required
							  
							  />
							  
							   <!--fin de l'input-->
							</div>
							<!-- /.form-group -->
						</div>
					@endif
				@endforeach
				
				<div class="col-md-6">
					<div class="form-group">
					  <label>.</label>
					  <button type="submit"  class="form-control select2" style="width: 100%;">Enregistrer</button>
						
					</div>
					<!-- /.form-group -->
                </div>
				<input type="hidden" name="table" value="{{$tableName}}">
            </div>
            
            </div>
            <!-- /.row -->

             
            </div>
            <!-- /.row -->


        </div>
        <!-- /.card -->

      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
	@endsection