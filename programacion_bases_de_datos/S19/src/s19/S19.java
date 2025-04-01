/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package s19;

import dblogic.Connect;
import java.sql.Connection;

/**
 *
 * @author Admin
 */
public class S19 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Connection dbConnection = Connect.getConnection(); // Get the connection to our database
        if(dbConnection != null){ // Checks if there is a valid connection
            // Then shows the UI
            CarCRUD mainWindow = new CarCRUD(dbConnection);
            mainWindow.setVisible(true);
        }
    }
    
}
