@extends("layouts.dashroad")
@section("content")
 <!-- Content Header (Page header) -->
 <div class="col-8">

        <div class="">
          <!-- left column -->
          <div class="">
            <!-- jquery validation -->
            <div class="card card-dark">
              <div class="card-header ">
                <h3 class="card-title">Ajustement <small></small></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" id="quickForm" method="get" action="{{route('ajustement.edit',$my_request[1])}}" enctype="multipart/form-data" >
				  {{ csrf_field() }}

					<input type="hidden" name="ajustement_id" @if($my_request[2]) value="{{$my_request[2]->id}}" @else value="0"@endif >
								
									
																					
					<div class="card-body row dossierPart">
					
						<div class="form-group col-6">
							<label for="exampleInputEmail1">Raisons *</label>
							<input type="text" name="raison" class="select2 form-control" @if($my_request[2]) value="{{$my_request[2]->raison}}" @endif  data-dropdown-css-class="select2-purple" style="width: 100%;" required>							
							<!--select name="type_element_bourse" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>							
								<option ></option>
								@foreach($type_element_bourse as $element)
									<option value="{{$element->id}}">{{$element->libelle_element}}</option>
								@endforeach
							</select-->							
						</div>
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Montant*</label>
						<input type="number" name="montant" min="1" class="select2 form-control"@if($my_request[2]) value="{{$my_request[2]->montant}}" @endif data-dropdown-css-class="select2-purple" style="width: 100%;" required>							
														
					  </div>
											  					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Annee academique*</label>
						<select name="annee_academique_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>							
							@if($my_request[2])<option value="{{$my_request[2]->annee_academique_id}}">{{date('Y',strtotime($my_request[2]->debut_annee)).'-'.date('Y',strtotime($my_request[2]->fin_annee))}}</option>@endif
							<option></option>
							@foreach($annees as $annee)
								<option value="{{$annee->id}}">{{date('Y',strtotime($annee->debut_annee)).'-'.date('Y',strtotime($annee->fin_annee))}}</option>
							@endforeach
						</select>							
					  </div>
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Type Paiement</label>
						<select name="type_element_bourse" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>							
							<option disabled></option>
							@foreach($type_element_bourse as $element)
								<option value="{{$element->id}}">{{$element->libelle_element}}</option>
							@endforeach
						</select>							
					  </div-->
					  
					  <div class="form-group col-6">
						<label for="exampleInputEmail1">Duree *</label>
						<input type="number" name="duree" class="select2 form-control" @if($my_request[2]) value="{{$my_request[2]->duree}}" @endif data-dropdown-css-class="select2-purple" style="width: 100%;" required>							
														
					  </div>
					  
					  <!--div class="form-group col-6">
						<label for="exampleInputEmail1">Date EFFET *</label>
						<input type="date" name="date_effet" class="select2 form-control" data-dropdown-css-class="select2-purple" style="width: 100%;" required>							
														
					  </div-->
					  
					 <div class="form-group col-6">
						<label for="exampleInputEmail1">Type Ajustement *</label>
						<select name="type_ajustement" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>
							@if($my_request[2])<option value="{{$my_request[2]->type_ajustement_id}}">{{$my_request[2]->libelle_ajustement}}</option>@endif
							<option></option>
							@foreach($type_ajustements as $element)
								<option value="{{$element->id}}">{{$element->libelle_ajustement}}</option>
							@endforeach
						</select>							
					</div>
							  					  					
					</div>
					<hr/>
									
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-dark float-right">Suivant</button>
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