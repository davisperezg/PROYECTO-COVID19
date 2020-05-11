<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
<title>PRINCIPAL</title>
</head>
<header> 

</header>
<body style="background-color: #999999;">
	<div class="container">
		<nav style="background: #dddddd;" class="nav nav-pills flex-column flex-sm-row">
		  <a class="flex-sm-fill text-sm-center nav-link" href="#">Lista de Ciudadanos</a>
		  <a class="flex-sm-fill text-sm-center nav-link disabled" href="#">Disabled</a>
		  <a class="flex-sm-fill text-sm-center nav-link disabled" href="#">Disabled</a>
		  <a class="flex-sm-fill text-sm-center nav-link" href="../salir">SALIR</a> 
		</nav>
		    
		&nbsp;
		 <table style="background-color: white;" id="id_table" class="table table-sm table-bordered " role="grid" aria-describedby="example1_info">
                <thead>
	                <tr>
	                	<th>ID</th>
						<th>NOMBRES</th>  
						<th>CELULAR</th>
						<th>NACIONALIDAD</th>
						<th>TIPO DE DOCUMENTO</th>
						<th>N�MERO DE DOCUMENTO</th>
						
	                </tr> 
                </thead> 
                <tbody>
              		     
                </tbody>
               
  	 </table>
	</div> 
 <!-- MODALS -->
 	<!-- MODAL CIUDADO ACTUALIZAR -->
 	<div class="modal fade" id="modal-lg" style="display: none;" aria-hidden="true">
       <form action="#" class="form-horizontal" id="id_registra"
								method="post"  data-toggle="validator" role="form" enctype="multipart/form-data">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title" id="id_titulo">Editar Ciudadano</h4>
              <button type="button" id="id_close" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">�</span>
              </button>
            </div>
        <div class="modal-body">
    		<input type="hidden" class="form-control" id="id_codigo">
    	
        	<div class="row">
		   		<div class="col-md-6">
			   		<div class="form-group">
			                  <label class="col-form-label" for="inputSuccess"> Nombres
			                      </label>
			                    <input type="text" class="form-control" id="id_nombres" name="Nombres">
			                  </div>
			                
		        </div>
		       <div class="col-md-6">
			   		<div id="div01" class="form-group">
			   		
			                    <label class="col-form-label" for="inputSuccess"> Celular
			                      </label>
			                    <input type="text" class="form-control" id="id_celular" name="Celular">
			           </div>
		        </div>
   			</div> 
        	<div class="row">
		   		
		        <div class="col-md-6">	           
			         <div id="div02" class="form-group">
			                    <label class="col-form-label" for="inputSuccess"> Nacionalidad	
			                      </label> 
			                      <select class="form-control" id="id_nacionalidad" name="Nacionalidad">
			                      	<option value="PERU">PERU</option>
			                      	<option value="VENEZUELA">VENEZUELA</option>
			                      	<option value="COLOMBIA">COLOMBIA</option>
			                      	<option value="ECUADOR">ECUADOR</option>
			                      	<option value="ARGENTINA">ARGENTINA</option>
			                      </select>
				     </div>                   
		   		</div> 
		   		 <div class="col-md-6">	           
			         <div id="div02" class="form-group">
			   	
			                    <label class="col-form-label" for="inputSuccess"> Tipo de documento	
			                      </label>
  									<select class="form-control" id="id_tipo_documento" name="tipoDocumento">
				                      	<option value="DNI">DNI</option>
					                    <option value="CARNET DE EXTRANJERIA">CARNET DE EXTRANJERIA</option>
			                      </select>				     
			           </div>                   
		   		</div> 
		   		 <div class="col-md-6">	           
			         <div id="div02" class="form-group">
			   	
			                    <label class="col-form-label" for="inputSuccess"> N�mero de documento	
			                      </label>
			                    <input type="text" class="form-control" id="id_numero_documento" name="numeroDocumento">
				     </div>                   
		   		</div> 
		   		</div>
		   		 <h4 class="modal-title" id="id_titulo">SINTOMAS</h4>
		   		  
		   		  <div class="row">
				   		<div class="col-md-6">
					   		<div class="form-group">
					                  <label class="col-form-label" for="inputSuccess"> �Tiene sensacion de falta de aire?
											(En ausencia de otra patologia que justifique este sintoma)?
					                      </label>
					                    <input disabled="disabled" type="text" class="form-control" id="id_pregunta_1" name="pregunta_1">
					                  </div>
					                
				        </div> 
				       <div class="col-md-6">
					   		<div id="div01" class="form-group">
					   		
					                    <label class="col-form-label" for="inputSuccess"> �Tiene Fiebre? (MAYOR DE 38�C)
					                      </label>
					                    <input disabled="disabled" type="text" class="form-control" id="id_pregunta_2" name="pregunta_2">
					           </div>
				        </div>
		   			</div> 
		   			
		   			<div class="row">
				   		<div class="col-md-6">
					   		<div class="form-group">
					                  <label class="col-form-label" for="inputSuccess"> �Tiene tos seca y persistente?
					                      </label>
					                    <input disabled="disabled" type="text" class="form-control" id="id_pregunta_3" name="pregunta_3">
					                  </div>
					                
				        </div> 
				       <div class="col-md-6">
					   		<div id="div01" class="form-group">
					   		
					                    <label class="col-form-label" for="inputSuccess"> �Ha tenido contacto estrecho con alg�n paciente positivo confirmado?
					                      </label>
					                    <input disabled="disabled" type="text" class="form-control" id="id_pregunta_4" name="pregunta_4">
					           </div>
				        </div>
		   			</div> 
		   			<div class="row">
				   		<div class="col-md-6">
					   		<div class="form-group">
					                  <label class="col-form-label" for="inputSuccess"> �Tiene sintomatolog�a gastrointestinal?
					                      </label>
					                    <input disabled="disabled" type="text" class="form-control" id="id_pregunta_5" name="pregunta_5">
					                  </div>
					                
				        </div> 
		   			</div> 
		   		 
   			</div>
        
            <div class="modal-footer justify-content-between">
             <button type="button" onclick="actualizarCiudadano();" class="btn btn-success" id="id_anadir"><i class="far fa-edit"></i> ACTUALIZAR	</button>       
            </div>
          </div>
          
          <!-- /.modal-content -->
        </div>
        </form>
        <!-- /.modal-dialog -->
      </div>
 	<!-- FIN DEL MODAL CIUDADANO ACTUALIZAR -->
</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
<script>
$(function() {
	tablaCiudadanos();
});
/*
function modalCiudadan(){
	$('#id_registra').trigger("reset");
	$("#id_codigo").val(0);
	$("#modal-lg").modal({show:true,keyboard:false});
}
*/
function editar(cod){
	$.getJSON("../buscarCiudadano",{codigo:cod},function(response){
		console.log(response);
		$("#id_codigo").val(response.dataBuscar.ciudadanos.idCiudadanos);
		$("#id_nombres").val(response.dataBuscar.ciudadanos.nombres);
		$("#id_celular").val(response.dataBuscar.ciudadanos.celular);
		$("#id_nacionalidad").val(response.dataBuscar.ciudadanos.nacionalidad);
		//$("#id_fecha_nacimiento").val(response.dataBuscar.nacionalidad);
		$("#id_tipo_documento").val(response.dataBuscar.ciudadanos.tipoDocumento);
		$("#id_numero_documento").val(response.dataBuscar.ciudadanos.numeroDocumento);
		
		$("#id_pregunta_1").val(response.dataBuscar.pregunta1);
		$("#id_pregunta_2").val(response.dataBuscar.pregunta2);
		$("#id_pregunta_3").val(response.dataBuscar.pregunta3);
		$("#id_pregunta_4").val(response.dataBuscar.pregunta4);
		$("#id_pregunta_5").val(response.dataBuscar.pregunta5);
	})
	$("#modal-lg").modal("show");
}
function actualizarCiudadano(){
				var cod,nom,cel,nac,tip,num;
				cod = $("#id_codigo").val();
				nom = $("#id_nombres").val();
				cel = $("#id_celular").val();
				nac = $("#id_nacionalidad").val();
				tip = $("#id_tipo_documento").val();
				num = $("#id_numero_documento").val();
		
				json=JSON.stringify({idCiudadanos:cod,nombres:nom,
					celular:cel,nacionalidad:nac,tipoDocumento:tip,
					numeroDocumento:num});
			   	//AJAX
				$.ajax({ 
					url:'../saveCiudadano',
					type:'POST',
					data:json,
					contentType:"application/json",
					success:function(response){
						if(response.dataMensaje!=-1){
							//usar metodo tabla de proycagenda-ke
							tablaCiudadanos();
							$("#modal-lg").modal("hide");
						}
						else
							alert("Error al actualizar");
					},
					error:function(e){
						swal("Error en el controller");
					}
				})  
} 
function tablaCiudadanos(){ 
	$.getJSON("../listaCiudadano",{},function(response){
		//eliminar tabla
		//$("#id_table").DataTable().destroy(); se necesita libreria
		//limpiar filas del cuerpo de la tabla
		$("#id_table tbody").empty(); 
		$.each(response.dataCiudadano,function(index,item){
			boton = '<a href="#" onclick="editar('+item.ciudadanos.idCiudadanos+')">Editar</a>';
			$("#id_table").append("<tr><td>"+item.ciudadanos.idCiudadanos+"</td><td>"+item.ciudadanos.nombres+"</td><td>"+
		 						item.ciudadanos.celular+"</td><td>"+ 
		 						item.ciudadanos.nacionalidad+"</td><td>"+
		 						item.ciudadanos.tipoDocumento+"</td><td>"+
		 						item.ciudadanos.numeroDocumento+"</td><td>"+
		 						boton+"</td></tr>");
			 
		});
		//volver a dibujar la tabla
		//$("#id_table").DataTable().draw();
		//$("#id_table").DataTable();
	})
	
}
</script>	
</html>