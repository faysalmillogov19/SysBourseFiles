
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
				BASE DE DONNEES
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
			@foreach($tables as $table)
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{ $table->Tables_in_gestionmaintenance }}</p>
                </a>
              </li>
		             
            </ul>	
			@endforeach
			<!--li class="nav-item">
                <a href="{{route('data.edit', $table->Tables_in_gestionmaintenance)}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add {{ $table->Tables_in_gestionmaintenance }}</p>
                </a>
              </li-->
          </li>
