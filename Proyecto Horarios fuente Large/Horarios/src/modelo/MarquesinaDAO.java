package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

 

public class MarquesinaDAO {
	
	
	
public List<Marquesina> getListMarquesinas(){
		
		List<Marquesina> misMarquesinas = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			con = MiConexion.getConnection();
			ps = con.prepareStatement(
					"select * from MARQUESINA");
			rs = ps.executeQuery();
			Marquesina marquesina;

			while (rs.next()) {

				marquesina = new Marquesina();
			
				marquesina.setId(rs.getInt(1));
				marquesina.setTexto((rs.getString(2)));
				misMarquesinas.add(marquesina);
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
						
		return misMarquesinas;
		
	}

}
