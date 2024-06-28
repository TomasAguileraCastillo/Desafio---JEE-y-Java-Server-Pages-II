<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.praxis.model.Habitacion"%>
<%@ page import="cl.praxis.business.HabitacionBusiness"%>
    
 
 <%
 String nombreReserva = request.getParameter("nombre");
 String apellidoReserva = request.getParameter("apellido");
 String emailReserva = request.getParameter("email");
 String medioPagoReserva = request.getParameter("medio_pago");
 int cantidadDiasReserva = Integer.parseInt(request.getParameter("dias"));

 String fechaEntradaReserva = request.getParameter("fecha_entrada");
 int idHabit = Integer.parseInt(request.getParameter("idhabitacion"));
 
 
 
 
 

//Librerias requeridas
HabitacionBusiness habita = new HabitacionBusiness();

//incializa Objeto Evento
Habitacion habitat = new Habitacion();
habitat.setId(idHabit);


//Busca y recoge informacion de evento seleccionado

habitat = habita.pedirHabitacionId(habitat);


//Obtiene el valor a pagar por la cantidad de tickets seleccionados
int valorTotalPago = habita.calculaValorReserva(habitat.getPrecio(), cantidadDiasReserva); 
 
 
 
 %>
 
 <!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>
	<%@include file="assets/html/header.jsp"%>
	<div class="container">
	<form method="post" action="procesa.jsp">
		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">
				<div class="row justify-content-center">
					<h1>
						Detalle Solictud Habitacion : <strong><%=habitat.getNombre()%></strong>
					</h1>
					<hr/ >
				</div>
			</div>
			<div class="container px-4 px-lg-5 mt-5">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item</th>
							<th scope="col">Valor</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Nombre</td>
							<td><%=nombreReserva%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Apellido</td>
							<td><%=apellidoReserva%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Email</td>
							<td><%=emailReserva%></td>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td>Medio Pago</td>
							<td><%=medioPagoReserva%></td>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td>Dias </td>
							<td><%=cantidadDiasReserva%></td>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td>Fecha Entrada </td>
							<td><%=fechaEntradaReserva%></td>
						</tr>
						<tr>
							<th scope="row">6</th>
							<td>Valor a Pagar</td>
							<td><strong>CL$ <%=valorTotalPago%></strong></td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<br /> <br />
	</form>
	</div>
	<%@include file="assets/html/footer.jsp"%>
</body>
</html>