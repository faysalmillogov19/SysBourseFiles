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
                <h3 class="card-title">Paiement <small></small></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" id="quickForm" method="POST" action="/paiement/add" enctype="multipart/form-data" >
				  {{ csrf_field() }}
								<input type="hidden" name="candidat" value="{{$my_request->id}}">									
																					
					<div class="card-body row dossierPart">
						
					  
					  
					  <div class="form-group col-12">
						<label for="exampleInputEmail1">Annee academique*</label>
						<select name="annee_academique_id" class="select2 form-control"   data-dropdown-css-class="select2-purple" style="width: 100%;" required>							
							<option disabled></option>
							@foreach($annees as $annee)
								<option value="{{$annee->id}}">{{date('Y',strtotime($annee->debut_annee)).'-'.date('Y',strtotime($annee->fin_annee))}}</option>
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