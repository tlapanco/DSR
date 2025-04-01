/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sqlserver;

import java.sql.*;

/**
 *
 * @author Admin
 */
public class SQLServer {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String url = "jdbc:sqlserver://localhost:1433;"
                + "databaseName=ImportadoraAutos;"
                + "user=profe;"
                + "password=Baul1234;"
                + "trustServerCertificate=true;";
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection(url);
            String consulta = "SELECT * FROM AUTOS";
            Statement stmt = con.createStatement();
            ResultSet res = stmt.executeQuery(consulta);
            String format = "%-5s %-15s %-15s %-10s%n";
            System.out.printf(format, "ID", "Marca", "Modelo", "Año");
            System.out.printf(format, "-----", "----------","----------","-----------");
            while(res.next()){
                int autoId = res.getInt("AutoID");
                String autoMarca = res.getString("Marca");
                String autoModelo = res.getString("Modelo");
                int autoAnio = res.getInt("Año");
                System.out.printf(format, autoId, autoMarca, autoModelo,autoAnio);
            }
            con.close();
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
    
}
