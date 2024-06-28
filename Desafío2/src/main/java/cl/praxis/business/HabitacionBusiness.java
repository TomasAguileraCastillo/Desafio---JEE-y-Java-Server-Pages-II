package cl.praxis.business;

import java.util.ArrayList;
import java.util.List;

import cl.praxis.model.Habitacion;

public class HabitacionBusiness {
	
	
	
	
	 /**
		 * -------------------------------------------------------------------------------------------
		 * Método para cargar las Habitaciones existentes en una lista de objetos de tipo Habitacion
		 * 
		 * @return List<Habitacion>
		 * @author: Autor Tomas Aguilera
		 * @version: 27/06/2024
		 */
	
	public List<Habitacion> pedirHabitacion() {
		
		ArrayList<Habitacion> habitaciones = new ArrayList<Habitacion>();
				
		// Info Habitacion 1
		Habitacion habitacion1 = new Habitacion();
		habitacion1.setId(1);
		habitacion1.setNombre("Habitacion 1, Simple");
		habitacion1.setDescripcion("Habitacion Clasica con cama extragrande, vistas al oceano y balcon");
		habitacion1.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-deluxe-queenguestroom-9683-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=375px:*");
		habitacion1.setPrecio(10000);
		habitacion1.setHabitaciones(1);
		habitacion1.setMetraje(45);
		
		
		// Info Habitacion 2
		
		Habitacion habitacion2 = new Habitacion();
		habitacion2.setId(2);
		habitacion2.setNombre("Habitacion 2, Doble - Simple");
		habitacion2.setDescripcion("Habitacion Clasica con 2 camas grandes o dobles, vistas al oceano y balcon");
		habitacion2.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-classic-room-5576-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=750px:*");
		habitacion2.setPrecio(20000);
		habitacion2.setHabitaciones(2);
		habitacion2.setMetraje(45);
		
		// Info Habitacion 3
		
		Habitacion habitacion3 = new Habitacion();
		habitacion3.setId(3);
		habitacion3.setNombre("Habitacion 3, Doble - Normal");
		habitacion3.setDescripcion("Habitacion Superior en planta alta con vistas al oceano y 2 camas dobles");
		habitacion3.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-deluxe-queenguestroom-9683-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=375px:*");
		habitacion3.setPrecio(30000);
		habitacion3.setHabitaciones(3);
		habitacion3.setMetraje(45);
		
		// Info Habitacion 4
		
		Habitacion habitacion4 = new Habitacion();
		habitacion4.setId(4);
		habitacion4.setNombre("Habitacion 4, Doble - King");
		habitacion4.setDescripcion("Suite Exceutive en planta superior con cama extragrande y vistas al oceano");
		habitacion4.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-junior-suite-5578-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=375px:*");
		habitacion4.setPrecio(40000);
		habitacion4.setHabitaciones(1);
		habitacion4.setMetraje(45);
		
		// Info Habitacion 5
		
		Habitacion habitacion5 = new Habitacion();
		habitacion5.setId(5);
		habitacion5.setNombre("Habitacion 5, Doble - King");
		habitacion5.setDescripcion("Suite Exceutive en planta superior con cama extragrande y vistas al oceano");
		habitacion5.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-presidential-suite-5580-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=375px:*");
		habitacion5.setPrecio(50000);
		habitacion5.setHabitaciones(1);
		habitacion5.setMetraje(45);
				
				
		// Info Habitacion 6
		
		Habitacion habitacion6 = new Habitacion();
		habitacion6.setId(6);
		habitacion6.setNombre("Habitacion 6, Doble - King");
		habitacion6.setDescripcion("Suite Exceutive en planta superior con cama extragrande y vistas al oceano");
		habitacion6.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-classic-room-5579-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=375px:*");
		habitacion6.setPrecio(60000);
		habitacion6.setHabitaciones(1);
		habitacion6.setMetraje(45);
		
		
		
		// Info Habitacion 7
		
		Habitacion habitacion7 = new Habitacion();
		habitacion7.setId(7);
		habitacion7.setNombre("Habitacion 7, Doble - King");
		habitacion7.setDescripcion("Suite Exceutive en planta superior con cama extragrande y vistas al oceano");
		habitacion7.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-classic-room-5577-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=375px:*");
		habitacion7.setPrecio(70000);
		habitacion7.setHabitaciones(1);
		habitacion7.setMetraje(45);
		
		// Info Habitacion 8
		
		Habitacion habitacion8 = new Habitacion();
		habitacion8.setId(8);
		habitacion8.setNombre("Habitacion 8, Doble - King");
		habitacion8.setDescripcion("Suite Exceutive en planta superior con cama extragrande y vistas al oceano");
		habitacion8.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-suite-9690-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=375px:*");
		habitacion8.setPrecio(80000);
		habitacion8.setHabitaciones(1);
		habitacion8.setMetraje(45);
		
		
		
		//se agregan las Habitaciones 
		
		habitaciones.add(habitacion1);
		habitaciones.add(habitacion2);
		habitaciones.add(habitacion3);
		habitaciones.add(habitacion4);
		habitaciones.add(habitacion5);
		habitaciones.add(habitacion6);
		habitaciones.add(habitacion7);
		habitaciones.add(habitacion8);
		
		
			
		
		return habitaciones;
		
	}
	
	 /**
	  * --------------------------------------------------------------------------------------------
	  * Método que entrega el objeto habitacion segun el id de busqueda
	  *
	  * @param Habitacion habitacion
	  * @return Habitacion habitacion
	  * @author: Autor Tomás Aguilera
	 * @version: 27/06/2024
	  */
		public Habitacion pedirHabitacionId(Habitacion habitacion) {
			
			//se genera un nuevo listado tipo habitacion y se le pasa el metodo 
			List<Habitacion> listaHabitacion = pedirHabitacion();
			
			//ciclo para busqueda de habitacion segun Id
			for (int x = 0; x < listaHabitacion.size(); x++) {
				
				if (listaHabitacion.get(x).getId() == habitacion.getId()) {
					habitacion = listaHabitacion.get(x);
				}
			}
			
			// Devuelve la Habitacion
			return habitacion;
		}
		
		
		 /**
		   * --------------------------------------------------------------------------------------------
		   * Método retorna el valor a pagar de la habitacion segun el valor y cantidad de dias seleccionados
		   *
		   * @param int valorHabitacion, int cantidadDias
		   * @return int valorTotal
		   * @author: Autor Tomás Aguilera  
		   * @version: 27/06/2024
		   */
		
		
			public int calculaValorReserva(int valorReserva, int cantidadDias) {
				int valorTotal = valorReserva * cantidadDias;
				return valorTotal;
			}
		
		
	

}
