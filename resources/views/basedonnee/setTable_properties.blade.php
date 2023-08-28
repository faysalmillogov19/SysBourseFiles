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
          <form class="card-body" method="post" action="{{route('bd.store')}}" id="new_table_form">
		  {{csrf_field()}}
			<div class="row">
				
			</div>
            <!--div class="row">
				
						<div class="col-md-6">
							<div class="form-group">
							  <label>Identifiant</label>
							  
							  
							  <input 
									class="form-control select2" style="width: 100%;"
									value="id"
									disabled
							  />
							  
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
							  <label>Description</label>
							  
							  
							  <input 
									class="form-control select2" style="width: 100%;" 
									value="clé primaire, identifiant"
									disabled
							  
							  />
							  
							</div>
						</div>
            </div-->
		<div id="block_To_add">	
			
			<div class="new_column">
				<hr>
				<div class="row">
						<div class="col-md-2">
							<div class="form-group">
							  <label>column_name</label>
							  
							  <!--On gère les propriétés de la column en input-->
							  
							  <input name="column_name[]" class="form-control select2" style="width: 100%;">
							  
							   <!--fin de l'input-->
							</div>
							<!-- /.form-group -->
						</div>
						
						<div class="col-md-1">
							<div class="form-group">
							  <label>Type</label>
							  
							  <!--On gère les propriétés de la column en input-->
							  
							  <select name="type[]" class="form-control select2 type" style="width: 100%;">
								<option value="text">Text</option>
								<option value="number">Number</option>
								<option value="file">File</option>
								<option value="date">Date</option>
								<option value="time">Time</option>
								<option value="join">Join</option>
							  </select>
							  
							   <!--fin de l'input-->
							</div>
							<!-- /.form-group -->
						</div>
						
						<div class="col-md-2 join_column">
							<div class="form-group">
							  <label>show column</label>
							  
							  <!--On gère les propriétés de la column en input-->
							  
							  <select name="show_column[]" class="form-control select2" style="width: 100%;">
								<option value=""></option>
								@foreach($joint as $j)
								<option value='{{$j["table"].".".$j["column"]}}'>{{$j["table"].".".$j["column"]}}</option>
								@endforeach
							  </select>
							  
							   <!--fin de l'input-->
							</div>
							<!-- /.form-group -->
						</div>
						<div class="col-md-1">
							<div class="form-group">
							  <label>required</label>
							  
							  <!--On gère les propriétés de la column en input-->
							  
							  <select name="required[]" class="form-control select2" style="width: 100%;">
								<option value="">Non</option>
								<option value="required">Oui</option>
							  </select>
							  
							   <!--fin de l'input-->
							</div>
							<!-- /.form-group -->
						</div>
						<div class="col-md-1">
							<div class="form-group">
							  <label>Max</label>
							  							  
							 <input name="max[]" type="number" class="form-control select2" style="width: 100%;">
							  
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
							  <label>Min</label>
							  
							  <!--On gère les propriétés de la column en input-->
							  
							  <input name="min[]" type="number" class="form-control select2" style="width: 100%;">
							  
							   <!--fin de l'input-->
							</div>
							<!-- /.form-group -->
						</div>
							<div class="col-md-2">
								<div class="form-group">
								  <label>regex</label>
								  <textarea name="regex[]" type="number" class="form-control select2" style="width: 100%;"></textarea>
									
								</div>
								<!-- /.form-group -->
							</div>
						
			</div>			
			<br>	
            </div>
		</div>
			<hr>
			
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
					  <label></label>
					  <button type="submit"  class="form-control select2" style="width: 100%;">Enregistrer</button>
						
					</div>
					<!-- /.form-group -->
                </div>
			</div>
            
            </form>
            <!-- /.row -->

             
            </div>
            <!-- /.row -->


        </div>
        <!-- /.card -->

      <!--/div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
	@endsection