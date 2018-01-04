/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;
import Database.Database;
import Models.Customers;
import Views.UserAccount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import net.proteanit.sql.DbUtils;
/**
 *
 * @author m4rkm3n
 */
public class CustomerController extends Customers{
    Database db;
    Connection con;
    PreparedStatement pst;
    
    public CustomerController(){
        super();
        db = new Database();
        con = db.getConnection();
    }
    
    public int createAccount(Customers u){
        int res = 0;
        String sql = "";
        int res1 = 0;
         String sql2 = "";
        
        try {
            sql = "INSERT INTO customers(cid,name,email,cnic,address,password) VALUES(NULL, ?, ?, ?, ?, md5(?))";
            pst = con.prepareStatement(sql);
            pst.setString(1, u.getName());
            pst.setString(2, u.getEmail());
            pst.setString(3, u.getCnic());
            pst.setString(4, u.getAddress());
            pst.setString(5, u.getPassword());
            res = pst.executeUpdate();
            sql2 = "INSERT INTO connections (conid, con_meterno, con_type, cid, con_date) VALUES (NULL,?,?,LAST_INSERT_ID(),?)";
            pst = con.prepareStatement(sql2);
            pst.setString(1, u.getCon_meterno());
            pst.setString(2, u.getCon_type());
            pst.setString(3, u.getCon_date());
           
            res1 = pst.executeUpdate();
            
        } catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return res;
        
        
    }
    
    public boolean checkLogin(Customers u){
        String sql = "";
        ResultSet rs = null;
        try {
            sql = "SELECT * FROM customers WHERE email = ? and password = md5(?)";
            pst = con.prepareStatement(sql);
            pst.setString(1, u.getEmail());
            pst.setString(2, u.getPassword());
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
