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
              <form role="form" id="quickForm" method="GET"  @if($my_request) action="{{route('type_element_bourse.edit',$my_request->id)}}" @else action="{{route('type_element_bourse.edit',0)}}"  @endif>
				  {{ csrf_field() }}
					<div class="card-body row candidatPart">
						
						<hr/>
						
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Code Element*</label>
						<input name="code_element" class="select2 form-control" @if($my_request) value="{{ $my_request->code_element}}" @endif placeholder="Code Element" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Libelle Element *</label>
						<input type="tel" name="libelle_element" class="select2 form-control" @if($my_request) value="{{ $my_request->libelle_element}}" @endif placeholder="Libelle" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Periodicite*</label>
						<input name="periodicite" class="select2 form-control" @if($my_request) value="{{ $my_request->periodicite}}" @endif placeholder="Periodicite" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
					  </div>
					
					<div class="form-group col-6">
						<label for="exampleInputEmail1">Etat_element*</label>
						<select name="etat_element" class="select2 form-control"  placeholder="Etat_element" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
						@if($my_request)
							<option value="{{ $my_request->etat_element}}" >{{ $my_request->etat_element}}</option>
						@endif
							<option disabled></option>
							<option value="1">Valide</option>
							<option value="0">Invalide</option>
						<select>
							
					  </div>
					
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Coefficient applicable*</label>
						<input type="number" name="coef_applicable" min="0" max="1" class="select2 form-control" @if($my_request) value="{{$my_request->coef_applicable}}" @endif placeholder="Coefficient applicable" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							
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