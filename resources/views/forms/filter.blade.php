
 <!-- Content Header (Page header) -->
 <div class="col-2">

        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-dark">
              <div class="card-header ">
                <h3 class="card-title">Pofiner la recherche <small></small></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" id="quickForm" method="post" action="{{route('requette.store')}}">
				  {{csrf_field()}}
                <div class="card-body">
                  <!--div class="form-group">
                    <label for="exampleInputEmail1">Pays</label>
                    <select name="pays" class="select2 form-control"  data-placeholder="Selectionner un pays" data-dropdown-css-class="select2-purple" style="width: 100%;">
						<option value="null"></option>
						@foreach($pays as $pay)
							<option value="{{$pay->id}}">{{$pay->nom_pays}}</option>
						@endforeach
					</select>
                  </div-->
				  <div class="form-group">
                    <label for="exampleInputEmail1">Bourse</label>
                    <select name="bourse" class="select2 form-control"  data-placeholder="Selectionner un bourse" data-dropdown-css-class="select2-purple" style="width: 100%;">
						<option value="null"></option>
						@foreach($bourses as $bourse)
							<option value="{{$bourse->id}}">{{$bourse->libelle_bourse}}</option>
						@endforeach
					</select>
                  </div><div class="form-group">
				   <div class="form-group">
                    <label for="exampleInputPassword1">Filiere</label>
                    <select name="filiere" class="select2 form-control"  data-placeholder="Selectionner un filiere" data-dropdown-css-class="select2-purple" style="width: 100%;">
						<option value="null"></option>
						@foreach($filieres as $filiere)
							<option value="{{$filiere->id}}">{{$filiere->libelle_filiere}}</option>
						@endforeach
					</select>
                  </div>
				  <div class="form-group">
                    <label for="exampleInputPassword1">Niveau Etude</label>
                    <select name="niveau" class="select2 form-control"  data-placeholder="Selectionner un niveau" data-dropdown-css-class="select2-purple" style="width: 100%;">
						<option value="null"></option>
						@foreach($niveaux as $niveau)
							<option value="{{$niveau->id}}">{{$niveau->libelle_niveau}}</option>
						@endforeach
					</select>
                  </div>
				  <div class="form-group">
                    <label for="exampleInputEmail1">Université</label>
                    <select name="universite" class="select2 form-control"  data-placeholder="Selectionner un universite" data-dropdown-css-class="select2-purple" style="width: 100%;">
						<option value="null"></option>
						@foreach($universites as $universite)
							<option value="{{$universite->id}}">{{$universite->nom_universite}}</option>
						@endforeach
					</select>
                  </div>
				  <div class="form-group">
                    <label for="exampleInputEmail1">Type Attribution</label>
                    <select name="attribution" class="select2 form-control"  data-placeholder="Selectionner un pays" data-dropdown-css-class="select2-purple" style="width: 100%;">
						<option value="null"></option>
						@foreach($attributions as $attribution)
							<option value="{{$attribution->id}}">{{$attribution->libelle_attribution}}</option>
						@endforeach
					</select>
				  </div>
				  <div class="form-group">
                    <label for="exampleInputEmail1">Sexe</label>
                    <select name="sexe" class="form-control" data-placeholder="Sexe" select2" data-dropdown-css-class="select2-purple" style="width: 100%;">
							<option value="null"></option>
							@foreach($sexes as $sexe)
							<option value="{{$sexe->sexe}}">{{$sexe->sexe}}</option>
							@endforeach
					</select>
                  </div>				  
                  <!--div class="form-group mb-0">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="terms" class="custom-control-input" id="exampleCheck1">
                      <label class="custom-control-label" for="exampleCheck1">I agree to the <a href="#">terms of service</a>.</label>
                    </div>
                  </div-->
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-dark">search</button>
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
