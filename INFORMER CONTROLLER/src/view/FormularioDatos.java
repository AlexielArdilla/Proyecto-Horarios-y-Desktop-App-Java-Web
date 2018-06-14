package view;

import java.awt.BorderLayout;

import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;


import javax.swing.JButton;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

import javax.swing.table.DefaultTableModel;

import model.ConversorResultSetADefaultTableModel;
import model.DatosDao;



public class FormularioDatos  extends JPanel  implements ActionListener {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
    private JTable tabla = new JTable();
  
    private JPanel operaciones = new JPanel();
    
    private JButton agregar = new JButton("Agregar cancelada");
    private JButton actualizar = new JButton("Actualizar");
    private JButton quitar = new JButton("Quitar cancelada");
    private JButton cambiarMarquesina = new JButton("Cambiar texto marquesina");

    /**
     * Crea la ventana con todos sus componentes dentro y la visualiza
     *
     */
    public FormularioDatos (){
    	super(new BorderLayout());
    	this.add(new JScrollPane(this.tabla));
    	
    	operaciones.add(new JLabel("Operaciones:"));
    	/* Agrego los botones al Listener */
    	agregar.addActionListener(this);
    	actualizar.addActionListener(this);
    	quitar.addActionListener(this);
    	cambiarMarquesina.addActionListener(this);
    	/* Agrego los botones al Formulario */
    	operaciones.add(this.agregar);
    	operaciones.add(this.actualizar);
    	operaciones.add(this.quitar);
    	operaciones.add(this.cambiarMarquesina);
    	
    	this.add(operaciones, BorderLayout.SOUTH);
    	
    	this.tabla.setPreferredScrollableViewportSize(new Dimension(500, 175));
    }

    
   
    /**
     * Mete el modelo que recibe en la tabla.
     * @param modelo
     */
    public void tomaDatos(DefaultTableModel modelo)
    {
        this.tabla.setModel(modelo);
    }
    

    @Override
    public void actionPerformed(ActionEvent e) {
    	   Object fuente = e.getSource();
    	   int id;
    	   
		if (fuente==agregar) {
    		   id = Integer.parseInt(JOptionPane.showInputDialog("Ingrese un ID de materia a cancelar."));
    	   	
			DatosDao misDatos = new DatosDao();
			misDatos.agregarMateriaCancelada(id);
			
		}
    	   else if (fuente==actualizar) {
    		    DefaultTableModel modelo = new DefaultTableModel();
   				DatosDao datosResultSet = new DatosDao();	
				ConversorResultSetADefaultTableModel.rellena(datosResultSet.getAllDatos(), modelo);
				this.tomaDatos(modelo);
				
    	   }else if (fuente==quitar){
    		   id = Integer.parseInt(JOptionPane.showInputDialog("Ingrese un ID de materia a quitar cancelar."));
    		   DatosDao misDatos = new DatosDao();
    		   misDatos.quitarMateriaCancelada(id);
    		  
    	   }else if (fuente==cambiarMarquesina){
    		   
    		   String texto = JOptionPane.showInputDialog("Ingrese el texto a mostrar en la marquesina");
    		   DatosDao misDatos = new DatosDao();
    		   misDatos.cambiarTextoMarquesina(texto);
    		   
    	   }
    	
    }
    
}
