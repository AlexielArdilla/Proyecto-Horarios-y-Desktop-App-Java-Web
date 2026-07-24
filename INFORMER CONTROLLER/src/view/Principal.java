package view;

import java.lang.reflect.InvocationTargetException;

import javax.swing.JFrame;
import javax.swing.SwingUtilities;
import javax.swing.table.DefaultTableModel;

import model.ConversorResultSetADefaultTableModel;
import model.DatosDao;

public class Principal {

	public static void main(String[] args) {
	
		
		try {
			SwingUtilities.invokeAndWait(new Runnable()
			{

			    public void run() {
			    	createAndShowUI();      
			    }
			});
		} catch (InvocationTargetException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
     
	}

	
	  private static void createAndShowUI() {
	        JFrame frame = new JFrame("Alumnos");
	        DefaultTableModel modelo = new DefaultTableModel();
	        FormularioDatos form = new FormularioDatos();
	        frame.add(form);
	        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	        frame.pack();
	        frame.setSize(850, 350);
	        frame.setLocationRelativeTo(null);
			DatosDao datosResultSet = new DatosDao();
	        frame.setVisible(true);		
			ConversorResultSetADefaultTableModel.rellena(datosResultSet.getAllDatos(), modelo);
			form.tomaDatos(modelo);

	        
	    }
	
	
}
