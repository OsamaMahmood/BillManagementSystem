/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Database.Database;
import Models.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 *
 * @author m4rkm3n
 */
public class AdminController extends Admin {
    Database db;
    Connection con;
    PreparedStatement pst;
    
     public AdminController(){
        super();
        db = new Database();
        con = db.getConnection();
    }
        public boolean checkLogin(Admin a){
        String sql = "";
        ResultSet rs = null;
        try {
            sql = "SELECT * FROM admin WHERE aemail = ? and apassword = md5(?)";
            pst = con.prepareStatement(sql);
            pst.setString(1, a.getAemail());
            pst.setString(2, a.getApassword());
            
            rs = pst.executeQuery();
            
            if (rs.next()){
                return true;
            }else{
                return false;
            }
            
        } catch (SQLException e){
            System.out.println(e.getMessage());
        }
        
        return false;
    }
    
}
