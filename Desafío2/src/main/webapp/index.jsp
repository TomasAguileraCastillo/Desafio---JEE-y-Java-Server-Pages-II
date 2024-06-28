<%@ page import="cl.praxis.model.Habitacion"%>
<%@ page import="cl.praxis.business.HabitacionBusiness"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
    // Librerias Requeridas
    HabitacionBusiness habitacioness = new HabitacionBusiness();
    
	//listado de Habitaciones
	List<Habitacion> listaHabitaciones = habitacioness.pedirHabitacion();
    
     %>
<!DOCTYPE html>
<html lang="en">
   <%@include file="/assets/html/head.jsp"%>
    <body>
    	 <%@include file="/assets/html/header.jsp"%>
    	 <div class="container">
    	 <form method="post" action="procesa.jsp">
    	 <!-- Section-->
    	 <section class="py-5">
         	<div class="container px-4 px-lg-5 mt-5">
            	<div class="row justify-content-center">
            		<h1>Habitaciones Disponibles(<%=listaHabitaciones.size()%>)</h1>
            		<hr/>
		 		</div>            
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <% for (int x = 0; x < listaHabitaciones.size(); x++) { %>
	                    <div class="col mb-5">
	                        <div class="card h-100">
	                            <!-- Product image-->
			 					<img 	class="card-img-top" src="<%=listaHabitaciones.get(x).getImagen()%>" 
			 							alt="<%=listaHabitaciones.get(x).getNombre()%>" />
	                            <!-- Product details-->
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <!-- Product name-->
	                                    <h5 class="fw-bolder"><%=listaHabitaciones.get(x).getNombre()%></h5>
	                                    <!-- Descripcion -->
	                                    <p><%=listaHabitaciones.get(x).getDescripcion()%></p>
	                                    <!-- Product price-->
	                                    CL$<%=listaHabitaciones.get(x).getPrecio()%> 
	                                </div>
	                            </div>
	                            <!-- Product actions-->
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="text-center">
	                            		<input	type="radio" id="idhabitacion" name="idhabitacion" 
	                            				value="<%=listaHabitaciones.get(x).getId()%>" checked>
	                            		 
	                            	</div>
	                            </div>  
	                        </div>
	                    </div>
                    <% } %>
               	</div>
          	</div>
      </section>
        <!-- Secction Form -->
       	<section>
				<div class="container px-4 px-lg-5 mt-5">
					<h1>Información de Reserva Habitacion</h1>
					<hr />
					<div class="row g-3">
						<div class="col-md-6">
							<label for="inputEmail4" class="formlabel">Nombre</label> 
							<input type="text" class="form-control" id="nombre" name="nombre">
							
						</div>
						<div class="col-md-6">
							<label for="inputPassword4" class="formlabel">Apellido</label> 
							<input type="text" class="form-control" id="apellido" name="apellido">
						</div>
						
						<div class="col-md-6">
							<label for="inputCity" class="formlabel">Email</label> 
							<input type="text" class="form-control" id="email" name="email">
						</div>
						<div class="col-md-2">
							<label for="inputEmail4" class="formlabel">Medio de Pago</label>
						<select id="medio_pago" name="medio_pago" class="form-select">
							<option value=""></option>
							<option value="Contado"> Contado </option>
							<option value="Tarjeta de Credito"> Tarjeta de Credito </option>
							<option value="Tarjeta de Debito"> Tarjeta de Debito </option>
						</select> 

						</div>
						<div class="col-md-2">
							<label for="inputState" class="formlabel">Días</label> 
							<select id="dias" name="dias" class="form-select">
								<option value=""></option>
								<% for (int x = 0; x < 30; x++) { %> 
										<option value="<%=x + 1%>"> <%=x + 1%> Día(s) </option> 
									<% }  %>
							</select>
						</div>
						<div class="col-md-2">
							<label for="inputState" class="formlabel">Fecha</label>
							<select id="fecha_entrada" name="fecha_entrada" class="form-select">
							<option value=""></option>
							<option value="5 de Julio de 2024 "> 5 de Julio de 2024 </option>
							<option value="15 de Julio de 2024 "> 15 de Julio de 2024 </option>
							<option value="23 de Julio de 2024 "> 23 de Julio de 2024 </option>
							<option value="3 de Agosto de 2024 "> 3 de Agosto de 2024 </option> 
							</select>
						</div>
						
						
						<div class="col-12"> 
							<hr />
							<button type="submit" class="btn btn-primary">Enviar Solicitud de Compra</button>
							
						</div>
					</div>
				</div>
	 		</section>
	 		<br /> <br />
        
        </form>
        </div>
        
        <%@include file="/assets/html/footer.jsp"%>
    </body>
</html>