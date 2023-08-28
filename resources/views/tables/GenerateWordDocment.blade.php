<!--?php
  header("Content-type: application/vnd.ms-word");
  header("Content-type: application/x-pdf");
  header("Content-Disposition: attachment;Filename=document_name.pdf");    
? -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CIOSPB</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="{{asset('../../plugins/fontawesome-free/css/all.min.css')}}">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="{{asset('../../plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
  <link rel="stylesheet" href="{{asset('../../dist/css/adminlte.min.css')}}">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet"-->
  <!--link href="{{asset('dist/css/importation.css')}}" rel="stylesheet"-->
</head>

<body>
		<hr/>
		<div>
			<button type="button" class="btn btn-info" onclick="window.history.back();">Retour</button>
			<span class="float-right">
				<button type="button" class="btn btn-info word-export">Exporter Word</button>
				<button type="button" class="btn btn-info pdf-export">Exporter Pdf</button>
				<button type="button" class="btn btn-info excel-export">Exporter Excel</button>
			</span>
		</div>
		<hr/>
		
<div class="container" id="page-content">
		<div class="row header">
			<div class="col-6">
				 <p class="float-left">
					MINISTERE DE L'ENSEIGNEMENT<br>
							SUPERIEUR,<br>
					DE LA RECHERCHE SCIENTIFIQUE ET DE
							L'INNOVATION<br>
					------------------------<br>
					SECRETARIAT GENERAL<br>
					------------------------<br>
					CENTRE NATIONAL DE L'INFORMATION, DE<br>
						L'ORIENTATION SCOLAIRE<br>
					ET PROFESSIONNELLE, ET DES BOURSES
				</p>
			</div>			
			<div class="col-6">
				<p class="float-right">
						BURKINA FASO<br>
				------------------------</br>
					Unité-Progrès-Justice<br>
				</p>
			</div>
		</div>
		<div class="float-center">
			<h3 class="text-center text-bold text-decoration-underline">{{$my_request[0]}}<h3>
		</div>
	<div class="">			
		<table class="table table-bordered">
		   
		  <tr>
			<th>N°</th>
			@if($my_request[1]>0)
					@foreach($my_request[2] as $key=>$value)
						<th scope="col">{{$key}}</th>
					@endforeach
			@endif
		  </tr>

			@for($i=2;$i<count($my_request);$i++)
				<tr>
					<th scope="row">{{$i-1}}</th>
					@foreach($my_request[$i] as $key=>$value)
						
						<td>{{$value}}</td>
					@endforeach
				</tr>
			@endfor
		 
		</table>
		<p class="text-left">Arreté la présente liste à {{$i-2}} nom(s)</p>
	</div>
	
	<div class=" container">
		<div class="float-right">
			<h5 class="text-right text-bold">{{$signataire->libelle_fonction}}, {{$signataire->nomsignataire}}</h5>
			<br/>
			<br/>
			<br/>
			<p class="text-right">{{$signataire->distinction}}</p>
		</div>
	</div>

</div>
	
<script src="{{asset('../../plugins/jquery/jquery.min.js')}}"></script>
<script src="{{asset('../../dist/js/jquery.table2excel.js')}}"></script>
<script src="{{asset('../../dist/js/FileSaver.js')}}"></script>
<script src="{{asset('../../dist/js/jquery.wordexport.js')}}"></script>
<script src="{{asset('../../dist/js/html2canvas.min.js')}}"></script>
<script src="{{asset('../../dist/js/pdfmake.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('../../plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- DataTables -->
<script src="{{asset('../../plugins/datatables/jquery.dataTables.js')}}"></script>
<script src="{{asset('../../plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('../../dist/js/adminlte.min.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('../../dist/js/demo.js')}}"></script>
<!-- page script -->
<script>
	  $(".word-export").click(function(event) {
	    $("#page-content").wordExport();
	  });
	  $(".pdf-export").click(function () {
            html2canvas($('#page-content')[0], {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Liste_imprimer.pdf");
                }
            });
        });
	$(".excel-export").click(function(){
	  $("#page-content").table2excel({
	    // exclude CSS class
	    //exclude: ".noExl",
	    //name: "Worksheet Name",
	    filename: "Liste_imprimer.xls",
	    //fileext: ".xls" 
	  });
	});
</script>
	
</body>
</html>
