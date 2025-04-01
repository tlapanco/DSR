/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package s17;

import java.sql.Connection;
import dbconnection.Connect;
/**
 *
 * @author Admin
 */
public class S17 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Connection dbConnection = Connect.getConnection(); // Get the connection to our database
        if(dbConnection != null){ // Checks if there is a valid connection
            // Then shows the UI
            Cars mainWindow = new Cars(dbConnection);
            mainWindow.setVisible(true);
        }
        
    }    
}