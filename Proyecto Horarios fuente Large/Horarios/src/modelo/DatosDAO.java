package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DatosDAO {
	
public List<Datos> getDatos(){
		
		List<Datos> datos = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			con = MiConexion.getConnection();
			ps = con.prepareStatement(
					"select Datos.id, Datos.Carrera, Datos.Materia, Datos.comisión, "
					+ "Datos.Profesor, Datos.Horario, Datos.Aula, "
					+ "Datos.Sede, DATOS.Cancelada from Datos where DATOS.ID <=14;");//***********
			rs = ps.executeQuery();

			while (rs.next()) {

				Datos dato = new Datos();
			
				dato.setId(rs.getInt(1));
				dato.setCarrera(rs.getString(2));
				dato.setMateria(rs.getString(3));
				dato.setComision(rs.getString(4));
				dato.setProfesor(rs.getString(5));
				dato.setHorario(rs.getString(6));
				dato.setAula(rs.getString(7));
				dato.setSede(rs.getString(8));
				dato.setCancelada(rs.getString(9));
				
				
				datos.add(dato);
			}
			
		} catch (SQLException e) {		
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				con.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}										
		}
						
		return datos;
		
	}

}
