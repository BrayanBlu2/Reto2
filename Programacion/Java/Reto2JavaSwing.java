import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JViewport;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

   /**
 * Este es el metodo constructor
 */
public class Reto2JavaSwing extends JFrame implements ActionListener {       
   
	// Este es el método constructor   
	   
	   JLabel lblSelecciona,lblResultado,lblEmpleados,lblPuestoDeTrabajo, lblTitulo1, lblTitulo2, lblInsertar,lblEspacio;
	   static JButton btnMostrar;
	JButton btnInsertar;
	static JButton btnAnterior;
	JButton btnSiguiente;
	JComboBox cboTablas;
	   static String datosReservas[][];
	   static String datosHabitaciones[][];
	   static String columnasReservas[]= {"idReserva","Fecha","NumeroPersonas","Nombre","Apellido","Telefono","Calle","NumeroPortal","Ciudad"};
	   static String columnasHabitaciones[]= {"NumeroHabitacion","Tamaño","idReserva"};
	   String opciones[]= {"Reservas", "Habitaciones"};
	   static JTable tblReservas;
	   static JTable tblHabitaciones;
	   static JTable tblEmpleados;
	   static String datosEmpleados[][];
	   static String columnasEmpleados[]= {"idEmpleado","Puesto","NombreEmpleado"};
	   
	   Reto2JavaSwing(){
	
	// Aquí describimos las especificaciones de los elementos
		   
	   setLayout(new FlowLayout());
	   btnMostrar = new JButton ("Mostrar");
	   lblPuestoDeTrabajo = new JLabel();
	   lblEmpleados = new JLabel ("Empleados y puestos");
	   lblSelecciona = new JLabel("Selecciona una de las tablas");
	   cboTablas = new JComboBox(opciones);	
	   datosReservas = new String [10][9];
	   datosHabitaciones = new String [10][3];
	   //tblHabitaciones = new JTable (datosHabitaciones,columnasHabitaciones);
	   lblResultado = new JLabel();
	   datosEmpleados = new String [10][3];
	   lblTitulo1 = new JLabel ("Obtener información de la base de datos");
	   lblTitulo2 = new JLabel ("Insertar registros en la base de datos");
	   lblInsertar = new JLabel ("Insertar registros");
	   btnInsertar = new JButton ("Insertar");
	   lblEspacio = new JLabel ("                                          ");
	   btnAnterior =new JButton("Anterior");
	   btnSiguiente =new JButton("Siguiente");	   
	   
	   //Aquí añadimos los diferentes elementos para que se muestren graficamente
	   
	   add(lblTitulo1);
	   add(lblSelecciona);
	   add(cboTablas);
	   cboTablas.addActionListener(this);
	   add (lblResultado);
	   add (lblEmpleados);
	   add (btnMostrar);	   
	   add (lblPuestoDeTrabajo);
	   btnMostrar.addActionListener(this);
	   add (lblEspacio);	 
	   btnSiguiente.addActionListener(null);
	   btnAnterior.addActionListener(null);
	  
	   setTitle("Información Hotel");
	   setSize(300,260);
	   setVisible(true);
	   setDefaultCloseOperation(EXIT_ON_CLOSE); 
		      	   	   
	   }
	   
	   /**
	 *Este método aplica la acción sobre los distintos elementos
	 */
	@Override
	   
	   // Aquí definimos las acciones que realiza cada elemento
	 
	   public void actionPerformed(ActionEvent e) {   					   
	    if ( e.getSource()== cboTablas) {
	    	 JOptionPane.showMessageDialog(this, createTablePanel(), "Seleccionado: " + cboTablas.getSelectedItem(), JOptionPane.PLAIN_MESSAGE);	
	    }
	    else
	    	if ( e.getSource()== btnMostrar) {
	    	 JOptionPane.showMessageDialog(this, createTablePanel1(), "Seleccionado: " + JOptionPane.PLAIN_MESSAGE, getDefaultCloseOperation());	
		  
	    }
	   }
	   
	   //Creamos una pantalla gráfica dentro de la pantalla inicial
	   
	    /**
	     * Este método nos permite crear un panel que contiene diferentes elementos
	     * @return
	     */
	    private JScrollPane createTablePanel() {
	        JScrollPane scrollPane = null;
	     // Crear un panel para el botón
	        JPanel buttonPanel = new JPanel();
	        buttonPanel.add(btnSiguiente); // Agregar el botón al panel
	        
	        if (cboTablas.getSelectedItem().equals("Reservas")) {
	            scrollPane = new JScrollPane(tblReservas);            

	            JPanel panel = new JPanel(new BorderLayout());//crear un apartado en el JScrollPane para colocar el boton        

	        panel.add(btnAnterior, BorderLayout.LINE_START);
	        panel.add(btnSiguiente, BorderLayout.LINE_END); 
	        panel.add(scrollPane, BorderLayout.BEFORE_FIRST_LINE);         

	        return new JScrollPane(panel);                 

	        } else if (cboTablas.getSelectedItem().equals("Habitaciones")) {

	            scrollPane = new JScrollPane(tblHabitaciones);        }	      

	        JPanel panel = new JPanel(new BorderLayout());//crear un apartado en el JScrollPane para colocar el boton        

	        panel.add(btnAnterior, BorderLayout.LINE_START);
	        panel.add(btnSiguiente, BorderLayout.LINE_END);  
	        panel.add(scrollPane, BorderLayout.BEFORE_FIRST_LINE);  	        

	        return new JScrollPane(panel);

	    }

	    // Creamos otra pantalla para la tabla de empleados, ya que se muestra separada a las anteriores    
	    
	    
	    private JScrollPane createTablePanel1() {
	    	 JPanel panel = new JPanel(new BorderLayout());//crear un apartado en el JScrollPane para colocar el botón
	        JScrollPane scrollPane = null;	
	        
	        scrollPane = new JScrollPane(tblEmpleados); 
	        JButton button = new JButton("Anterior");
	        JButton button1 = new JButton("Siguiente");
	        
	        
	        panel.add(button, BorderLayout.LINE_START);
	        panel.add(button1, BorderLayout.LINE_END);
	        
	        panel.add(scrollPane, BorderLayout.BEFORE_FIRST_LINE);        
	        
	        
	        
	        return new JScrollPane(panel);
	        	        
	        
	    }
	    
   /**A través del main llamamos al programa y generamos la conexión con la base de datos
 * @param args
 * @throws Exception
 */
public static void main(String[] args) throws Exception {
	   new Reto2JavaSwing();
	   
      // Conectar el Driver JDBC
      Class.forName("com.mysql.cj.jdbc.Driver");

      // variables, cambiar según corresponda
      final String url = "jdbc:mysql://mysql-8001.dinaserver.com/reto2final";
      final String user = "ealexguzman99";
      final String password = "TQwB0M46?^9";

      // establecer la conexión
      Connection con = DriverManager.getConnection(url, user, password);

      // mostrar mensaje de conexión exitosa o fallo
      if (con == null) {
         System.out.println("No se ha establecido la conexión");
         return;
      } else
    	  
         System.out.println("¡Felicidades! Se ha establecido la conexión");
      
      // Obtenemos los datos desde nuestra base de datos
      
      
      Statement statement = con.createStatement();
      int limite = 10;
      ResultSet resultSet = statement.executeQuery("SELECT * FROM reservas ORDER BY Fecha DESC LIMIT 10, " + limite ); //Los datos obtenidos están organizados de 10 en 10 desde de la fecha de de reserva más reciente
      int i = 0; //Utilizamos un bucle para obteter los datos
      while (resultSet.next()) {
          System.out.println(resultSet.getInt(1) + " " + resultSet.getDate(2) + " "+
          resultSet.getInt(3) + " " + resultSet.getString(4)+ " " + resultSet.getString(5) 
          + " " + resultSet.getString(6)+ " " + resultSet.getString(7)
          + " " + resultSet.getString(8)+ " " + resultSet.getString(9));
          
          //Obtenemos los datos que visualizaremos en la tabla desde la base de datos a través de unas variables que nosotros previamente definimos.
          
          int id = resultSet.getInt(1);
          datosReservas[i][0] = String.valueOf(id);
          String fecha = resultSet.getString(2);
          datosReservas[i][1] = fecha;
          int numeroPersonas = resultSet.getInt(3);
          datosReservas[i][2] = String.valueOf(numeroPersonas);
          String nombre = resultSet.getString(4);
          datosReservas[i][3] = nombre;
          String apellido = resultSet.getString(5);
          datosReservas[i][4] = apellido;
          String telefono = resultSet.getString(6);
          datosReservas[i][5] = telefono;
          String calle = resultSet.getString(7);
          datosReservas[i][6] = calle;   
          String numeroPortal = resultSet.getString(8);
          datosReservas[i][7] = numeroPortal;  
          String ciudad = resultSet.getString(9);
          datosReservas[i][8] = ciudad;  
          
          i++; // Incrementar el índice para almacenar en la siguiente fila del array
      }
          
        //Añadimos todos los datos a la tabla que se mostrará graficamente
      
      	  tblReservas = new JTable (datosReservas,columnasReservas);
   
      	  
   if (con == null) {
       System.out.println("No se ha establecido la conexión");
       return;
    } else
  	  
       System.out.println("¡Felicidades! Se ha establecido la conexión");
    
      	Statement statement1 = con.createStatement();
        ResultSet resultSet1 = statement1.executeQuery("select * from habitaciones");
        int i1 = 0;
        while (resultSet1.next()& i1 <10) {
            System.out.println(resultSet1.getInt(1) + " " + resultSet1.getInt(2) + " "+
            resultSet1.getInt(3));  
      	  
        int NumeroHabitacion = resultSet1.getInt(1);
        datosHabitaciones[i1][0] = String.valueOf(NumeroHabitacion);
        String Tamano = resultSet1.getString(2);
        datosHabitaciones[i1][1] = Tamano;  
        int idReserva = resultSet1.getInt(3);
        datosHabitaciones[i1][2] = String.valueOf(idReserva);
               
        i1++; 
        }
        
        tblHabitaciones = new JTable (datosHabitaciones,columnasHabitaciones);
      
        
        if (con == null) {
            System.out.println("No se ha establecido la conexión");
            return;
         } else
       	  
            System.out.println("¡Felicidades! Se ha establecido la conexión");
         
           	Statement statement2 = con.createStatement();
            ResultSet resultSet2 = statement2.executeQuery("select * from empleados");
            int i2 = 0;               	 
            while (resultSet2.next()& i2 <10) {
            System.out.println(resultSet2.getInt(1) + " " + resultSet2.getString(2) + " "+
            resultSet2.getString(3));                      
            
	            int idEmpleado = resultSet2.getInt(1);
	            datosEmpleados[i2][0] = String.valueOf(idEmpleado);
	            String Puesto = resultSet2.getString(2);
	            datosEmpleados[i2][1] = Puesto;  
	            String NombreEmpleado = resultSet2.getString(3);
	            datosEmpleados[i2][2] = NombreEmpleado;                                 	 
             
             i2++;
            }
           tblEmpleados = new JTable (datosEmpleados,columnasEmpleados);          
      // Cerrar la conexión JDBC
      con.close();
      
   }}
  
   
   






