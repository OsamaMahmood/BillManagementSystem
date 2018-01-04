/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author m4rkm3n
 */
public class Database {
    private Connection con;
    private final String url;
    private final String dbusername;
    private final String dbpassword;
    
    public Database(){
        url = "jdbc:mysql://localhost:3306/billmanagmentsystem";
        dbusername = "root";
        dbpassword = "toor";
    }
    
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc");
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
        try {
            con = DriverManager.getConnection(url,dbusername,dbpassword);
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
        return con;
    }
}
   
