/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package car;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;


/**
 *
 * @author Admin
 */
public class Car {
    private Connection dbConnection;
    
    public Car(Connection dbConnection){
        this.dbConnection = dbConnection;
    }
    
    /**
     * 
     * Method that calls a SP to get all cars data 
     * 
     * 
     * @return A ResultSet with the following fields:
     * int AutoID, String Marca, String Modelo, int Año, String NombreChasis;
     * null otherwise
     * 
     */
    public ResultSet getAllCars(){        
        ResultSet data = null; // To save data from a SQL query
        String procedure = "{ call GetAllCars }"; //Name of the SP to call
        try{
            CallableStatement procedureCall = this.dbConnection.prepareCall(procedure); // To invoke a  SP            
            data = procedureCall.executeQuery(); // Executes the given query              
        }catch(SQLException e){
            System.out.println(e.getMessage());
            JOptionPane.showMessageDialog(null, "Algo salió mal al recuperar los autos", "Error", JOptionPane.ERROR_MESSAGE);            
        }
        
        return data;
        
    }
}
