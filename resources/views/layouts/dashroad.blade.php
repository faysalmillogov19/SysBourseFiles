<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CIOSPB</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../../plugins/datatables-bs4/css/dataTables.bootstrap4.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      
    </ul>

    <!-- SEARCH FORM -->
    <!--form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form-->
  </nav>
  
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar elevation-4  sidebar-dark-primary"><!--sidebar-light-primary--> 
    <!-- Brand Logo -->
    <a href="../../index3.html" class="brand-link">
      <img src="../../dist/img/bfa.jpg"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">SYSBOURSE</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../../dist/img/arm.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="">
          <a href="#" class="d-block">Unité-Progrès-Justice</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tools"></i>
              <p>
				Paramètres
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>

            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{route('requette.index')}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tous les </p>
                </a>
              </li>
			  
			  <li class="nav-item">
                <a href="{{route('type_element_bourse.index')}}" class="nav-link">
                  <i class="fa fa-bank nav-icon">&#xf19c;</i>
                  <p>Banques</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('type_element_bourse.index')}}" class="nav-link">
                  <i class="fab fa-artstation nav-icon"></i>
                  <p>Types Element Bourse</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('element_bourse.index')}}" class="nav-link">
                  <i class="fab fa-asymmetrik nav-icon"></i>
                  <p>Elements Bourse</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('element_bourse.index')}}" class="nav-link">
                  <i class="fab fa-asymmetrik nav-icon"></i>
                  <p>Niveau etude</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('element_bourse.index')}}" class="nav-link">
                  <i class="fas fa-calendar-alt nav-icon"></i>
                  <p>Année académique</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('element_bourse.index')}}" class="nav-link">
                  <i class="fas fa-calendar-day nav-icon"></i>
                  <p>Mois</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('element_bourse.index')}}" class="nav-link">
                  <i class="fas fa-city nav-icon"></i>
                  <p>Université</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('element_bourse.index')}}" class="nav-link">
                  <i class="fas fa-building nav-icon"></i>
                  <p>Structures</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('element_bourse.index')}}" class="nav-link">
                  <i class="fa fa-graduation-cap nav-icon"></i>
                  <p>Filières</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('element_bourse.index')}}" class="nav-link">
                  <i class="fa fa-home nav-icon"></i>
                  <p>Pays</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{route('element_bourse.index')}}" class="nav-link">
                  <i class="fas fa-map-marker nav-icon"></i>
                  <p>Villes</p>
                </a>
              </li>
              
            </ul>
          </li>
                    
          <li class="nav-header">MODULES</li>
          <li class="nav-item">
            <a href="/requette" class="nav-link">
              <i class="nav-icon far fa-user"></i>
              <p>
                Tous les boursiers
                <span class="badge badge-info right">{{count($dossiers)}}</span>
              </p>
            </a>
          </li>
		  <li class="nav-item">
            <a href="/mandatement" class="nav-link">
              <i class="nav-icon fas fa-print"></i>
              <p>
                Mandatements
              </p>
            </a>
          </li>
		  
		  <li class="nav-item">
            <a href="/boursiers" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Boursiers
              </p>
            </a>
          </li>
		  
		  
		  <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-address-card nav-icon"></i>
              <p>
				Candidatures
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/candidats" class="nav-link">
                  <i class="fa fa-file-powerpoint nav-icon"></i>
                  <p>
					Liste des Candidatures
					<span class="badge badge-info right">{{count($candidats)}}</span>
				  </p>
                </a>
              </li>
			  
			  <li class="nav-item">
                <a href="/candidat/form/{{0}}" class="nav-link">
                  <i class="fa fa-plus-circle nav-icon"></i>
                  <p>Nouvelle Candidature</p>
                </a>
              </li>
              
            </ul>
          </li>
		  
		  <li class="nav-item">
            <a href="/alertes" class="nav-link">
              <i class="fa fa-bullhorn nav-icon"></i>
              <p>
                Alertes
              </p>
            </a>
          </li>
		  
                 
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" >
    <!-- Content Header (Page header) -->
    <section class="content-header">
      
    </section>
	<section class="content" >
    <!-- Main content -->
	@yield('content')
    <!-- /.content -->
	</section>

  </div>
  <!-- /.content-wrapper -->
  <!--footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.0.3-pre
    </div>
  </footer-->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<script src="../../dist/js/jquery.table2excel.js"></script>
<script src="../../dist/js/FileSaver.js"></script>
<script src="../../dist/js/jquery.wordexport.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="../../plugins/datatables/jquery.dataTables.js"></script>
<script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- page script -->
<script>
//$(".masque").hide();
  $(function () {
    //$("#example1").DataTable();
	$('#example1').dataTable({
    aLengthMenu: [
        [25, 50, 100, 200, -1],
        [25, 50, 100, 200, "All"]
    ]
});

	
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });
  });
</script>
<script>
$('#printer').click(function(){
	
	$('#example1').table2excel({
		exclude: "noEx",
		name: "ListeCandidats",
		filename:"liste.xls"
	});
		
	/*
	var table = $(this).prev('#example1');
					if(table && table.length){
						var preserveColors = (table.hasClass('table2excel_with_colors') ? true : false);
						$(table).table2excel({
							exclude: ".noExl",
							name: "Excel Document Name",
							filename: "myFileName" + new Date().toISOString().replace(/[\-\:\.]/g, "") + ".xls",
							fileext: ".xls",
							exclude_img: true,
							exclude_links: true,
							exclude_inputs: true,
							preserveColors: preserveColors
						});
					}*/
});

</script>
<script>
					

function printf() {
                    var divName= "myTable";
					var entete='<div class="row text-justify" id="entete"><p class="col-4">'+<?php echo json_encode($entete->entete);?>+"</p>";
					var numero='<p class="col-5"></p><p class="col-3">'+<?php echo json_encode($entete->numerocourrier);?>+"</p></div>";
					var signataire='<div class="row text-justify style="text-align:right"><p class="col-8"> </p><p class="col-4">'+<?php echo json_encode($signataire->nomsignataire);?>+"</p></div>";
                    var group = document.getElementById(divName);
                    var table = group.getElementsByTagName("table")[0].innerHTML;
                     var printContents = entete+numero+table+signataire;
                     var originalContents = document.body.innerHTML;

                     document.body.innerHTML = printContents;

                     window.print();

                     document.body.innerHTML = originalContents;
                }
</script>
<script>
$("#printerWord").click(function(event) {
	//alert("aaaa");
    $("table").wordExport();
});

$("#imprimerMandatement").click(function() {
	$("#impression").val("imprimer");
	//alert($("#impression").val());
	//$("#filterMandatement").submit();
});
$("#search").click(function() {
	$("#impression").val("");

});
$("#paiementfilter").submit(function(){
	var debut=$('.debut').val();
	var fin=$('.fin').val();
	if(debut>fin)
	{
		$('.debut_fin_message').text('La date de début doit être inférieure à celle de la fin');
		return false;
	}
	else
	{
		return true;
	}
});
</script>

</body>
</html>
