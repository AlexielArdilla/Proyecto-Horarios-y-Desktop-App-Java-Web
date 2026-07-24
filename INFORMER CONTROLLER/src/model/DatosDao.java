package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JOptionPane;

import database.MiConexion;

public class DatosDao {

	
	public ResultSet getAllDatos(){
		
		Connection con = MiConexion.getConnection();
		ResultSet rs = null;
        try
        {
            Statement s = con.createStatement();
            rs = s.executeQuery("select Datos.id, Datos.Carrera, Datos.Materia, Datos.comisión, "
					+ "Datos.Profesor, Datos.Horario, Datos.Aula, "
					+ "Datos.Sede, DATOS.Cancelada from Datos where DATOS.ID <=14;");
        } catch (Exception e)
        {
            e.printStackTrace();
        }
        return rs;
		
		
	}
	
	//mi codigo
	public int agregarMateriaCancelada(int id) {
		
		
		Connection cn = MiConexion.getConnection();
		 int r = 0;
		
		try {
			 String query = "update DATOS set Cancelada='cancelada' where id= "+id;
			 PreparedStatement p = cn.prepareStatement(query);
	
			 
			  r=p.executeUpdate();
			  
			  if(r>0){ System.out.println("insert exitoso");
			  JOptionPane.showMessageDialog(null, "Proceso exitoso");
				  
			  }
			  cn.close();
			 } catch (SQLException e) {

				 System.out.println("Algo ha fallado!!!");
				 JOptionPane.showMessageDialog(null, "Algo ha fallado");
				 
				e.printStackTrace();
			}
		
		
		return r;
	
	}
	
	public int quitarMateriaCancelada(int id) {

		Connection cn = MiConexion.getConnection();
		int r = 0;

		try {
			String query = "update DATOS set Cancelada='NULL' where id= " + id;
			PreparedStatement p = cn.prepareStatement(query);

			r = p.executeUpdate();

			if (r > 0) {
				System.out.println("insert exitoso");
				JOptionPane.showMessageDialog(null, "Proceso exitoso");

			}
			cn.close();
		} catch (SQLException e) {

			System.out.println("Algo ha fallado!!!");
			JOptionPane.showMessageDialog(null, "Algo ha fallado");

			e.printStackTrace();
		}

		return r;

	}
	
	public int cambiarTextoMarquesina(String texto) {

		Connection cn = MiConexion.getConnection();
		int r = 0;

		try {
			String query = "update MARQUESINA set TEXTO='"+texto+"' where id= 1";
			PreparedStatement p = cn.prepareStatement(query);

			r = p.executeUpdate();

			if (r > 0) {
				System.out.println("insert exitoso");
				JOptionPane.showMessageDialog(null, "Proceso exitoso");

			}
			cn.close();
		} catch (SQLException e) {

			System.out.println("Algo ha fallado!!!");
			JOptionPane.showMessageDialog(null, "Algo ha fallado");

			e.printStackTrace();
		}

		return r;

	}

}
