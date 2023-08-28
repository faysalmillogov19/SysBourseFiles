@extends("layouts.dashroad")
@section("content")
 <!-- Content Header (Page header) -->
 <div class="col-8">

        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-dark">
              <div class="card-header ">
                <h3 class="card-title">Nouveau Type Element Bourse <small></small></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" id="quickForm" method="GET"  @if($my_request) action="{{route('element_bourse.edit',$my_request->id)}}" @else action="{{route('element_bourse.edit',0)}}"  @endif>
				  {{ csrf_field() }}
					<div class="card-body row candidatPart">
						
						<div class="form-group col-6">
							<label for="exampleInputEmail1">Type element*</label>
							<select name="type_element_bourse" class="select2 form-control"  placeholder="Niveau" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
								@if($my_request)
									<option value="{{ $my_request->type_element_bourse_id}}" >{{ $my_request->libelle_element}}</option>
								@endif
								<option disabled></option>
								@foreach($all_type_element_bourse as $type)
									<option value="{{$type->id}}">{{$type->libelle_element}}</option>
								@endforeach
							</select>							
					  </div>
					  <div class="form-group col-6">
							<label for="exampleInputEmail1">Niveau étude*</label>
							<select name="niveau_etude" class="select2 form-control"  placeholder="Niveau" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
								@if($my_request)
									<option value="{{ $my_request->niveau_etude_id}}" >{{ $my_request->libelle_niveau}}</option>
								@endif
								<option disabled></option>
								@foreach($niveaux as $niveau)
									<option value="{{$niveau->id}}">{{$niveau->libelle_niveau}}</option>
								@endforeach
							</select>							
					  </div>
					  <div class="form-group col-6">
							<label for="exampleInputEmail1">Bourse*</label>
							<select name="bourse" class="select2 form-control"  placeholder="Niveau" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
								@if($my_request)
									<option value="{{ $my_request->bourse_id}}" >{{ $my_request->libelle_bourse}}</option>
								@endif
								<option disabled></option>
								@foreach($bourses as $bourse)
									<option value="{{$bourse->id}}">{{$bourse->libelle_bourse}}</option>
								@endforeach
							</select>							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Nombre *</label>
						<input type="number" name="nombre" min="1" class="select2 form-control" @if($my_request) value="{{ $my_request->nombre}}" @endif placeholder="nombre" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Montant*</label>
						<input name="montant" min="0" class="select2 form-control" @if($my_request) value="{{ $my_request->montant}}" @endif placeholder="montant" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					
					
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Debut </label>
						<input type="date" name="debut" min="0" max="1" class="select2 form-control" @if($my_request) value="{{$my_request->date_debut_validite}}" @endif placeholder="debut" data-dropdown-css-class="select2-purple" style="width: 100%;">
							
					  </div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Fin </label>
						<input type="date" name="fin" min="0" max="1" class="select2 form-control" @if($my_request) value="{{$my_request->date_fin_validite}}" @endif placeholder="fin" data-dropdown-css-class="select2-purple" style="width: 100%;">
							
					  </div>
				  					
					</div>
					
				<div class="card-footer">
                  <button type="submit" class="btn btn-dark float-right">Enregistrer</button>
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