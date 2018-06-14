package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MiConexion {
	private  static String DB_URL="";
	private  static String DB_USERNAME="";
	private  static String DB_PASSWORD="";
	private  static String DB_DRIVER_CLASS="";
	
	static {      
			DB_DRIVER_CLASS = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        	DB_URL = "jdbc:sqlserver://localhost:1433;databaseName=HORARIOS";
        	DB_USERNAME="Atlas";
        	DB_PASSWORD="1234512";   
	}
		
	public static Connection getConnection() 
	{
        Connection con = null;
        try {
        	Class.forName(DB_DRIVER_CLASS);
            con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
			return(con);
		}

		catch(SQLException error){
			System.out.println("Error: en el socket de conexi�n a la base " + error);
			return(null);
		}
		catch(ClassNotFoundException error){
			System.out.println("Error: al cargar el driver JDBC  " + error);
			return(null);
		}
	}
}
