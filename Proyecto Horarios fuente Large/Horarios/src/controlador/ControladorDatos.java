package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Datos;
import modelo.DatosDAO;
import modelo.Marquesina;
import modelo.MarquesinaDAO;


/**
 * Servlet implementation class ControladorDatos
 */
@WebServlet("/ControladorDatos")
public class ControladorDatos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorDatos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		DatosDAO misDatos = new DatosDAO(); 
		List<Datos> datos = misDatos.getDatos();
		MarquesinaDAO miMarquesina = new MarquesinaDAO();
		List<Marquesina> listMarquesinas = miMarquesina.getListMarquesinas();
		String text_to_display = listMarquesinas.get(0).getTexto();
		
		
		
		request.setAttribute("datos", datos);
		
		request.setAttribute("info", text_to_display);
	
		getServletContext().getRequestDispatcher("/horarios.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	//variante
	public void cancelarClasePorID(int id, List<Datos> datos) {

		for (Datos d : datos) {

			if (d.getId() == id) {

				d.setCancelada("cancelada");

			}

		}
	}
	
	//Ojo con esto, usar con precaucion
	public void cargarStringMarquee(HttpServletRequest request, String info){
		
		request.setAttribute("info", info);
		
	}
}
