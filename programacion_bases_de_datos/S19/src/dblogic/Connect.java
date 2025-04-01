/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dblogic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class Connect {
     /*DB credentials*/
    private static final String URL = "jdbc:sqlserver://localhost:"
            + "1433;"
            + "databaseName=ImportadoraAutos;"
            + "user=profe;"
            + "password=Baul1234;"
            + "trustServerCertificate=true;";
    
    public static Connection getConnection() { 
        Connection dbConnection = null;
        try {
            dbConnection = DriverManager.getConnection(URL);            
        }catch(SQLException e){
            System.out.println(e.getMessage());
            JOptionPane.showMessageDialog(null, "Error en la conexión a la base de datos, intentelo más tarde.", "Error", JOptionPane.ERROR_MESSAGE);            
        }       
        
        return dbConnection;
    }
    
}
