/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dblogic;

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
     * @return A <code>ResultSet</code> with the following fields:
     * <code>int</code> AutoID, <code>String</code> Marca, <code>String</code> Modelo, <code>int</code> Año, <code>String</code> NombreChasis;
     * <code>null</code> otherwise
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
    
    
    /**
     * 
     * Method that calls a SP to save a new car in Autos
     * 
     * @param branch The branch of the new car <code>String</code>
     * @param model The model of the new car <code>String</code>
     * @param year The year of the new car <code>int</code>
     * @param chassisID The id from TipoChasis table <code>int</code> 
     * @return 
     * 
     * <code>true</code> if the record was saved successfully; <code>false</code> if the record could not be added
     */
    public Boolean addNewCar(String branch, String model, int year, int chassisID){
        String procedure = "{ call CreateCar(?, ?, ?, ?) }";        
        try{
            CallableStatement procedureCall = this.dbConnection.prepareCall(procedure);  
            procedureCall.setString(1, branch);
            procedureCall.setString(2, model);
            procedureCall.setInt(3, year);
            procedureCall.setInt(4, chassisID);
            int affectedRows = procedureCall.executeUpdate();
            
        }catch(SQLException e){
            System.out.println(e.getMessage());            
            return false;

        }
        return true;
    }
    
    
    /**
     * Method that calls a SP to update the year in a record according to a given id
     * 
     * @param carID Id of the record to update
     * @param year New year value to update
     * @return 
     * <code>true</code> if the record was updated successfully; <code>false</code> if the record could not be updated
     */
    public Boolean updateCarYear(int carID,int year){
        String procedure = "{ call UpdateCarYear(?, ?) }";
        try{
            CallableStatement procedureCall = this.dbConnection.prepareCall(procedure);
            procedureCall.setInt(1, carID);
            procedureCall.setInt(2, year);
            int affectedRows = procedureCall.executeUpdate();
        }catch(SQLException e){
            System.out.println(e.getMessage());
            return false;
        }
        return true;        
    }
    
    
    /**
     * Method that calls a SP to delete a car from a given id
     * @param carID Id of the record to be deleted
     * @return 
     * <code>true</code> if the record was deleted successfully; <code>false</code> if the record could not be deleted
     */
    
    public Boolean deleteCar(int carID){
        String procedure = "{ call DeleteCar(?) }";
        try{
            CallableStatement procedureCall = this.dbConnection.prepareCall(procedure);
            procedureCall.setInt(1, carID);
            int affectedRows = procedureCall.executeUpdate();
        }catch(SQLException e){
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }
    
}
