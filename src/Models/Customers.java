/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author m4rkm3n
 */
public class Customers {
    private int cid;
    private String name;
    private String email;
    private String password;
    private String cnic;
    private String address;
    private String con_type;
    private String con_meterno;
    private String con_date;
    
    
    public String getCon_type() {
        return con_type;
    }

    public void setCon_type(String con_type) {
        this.con_type = con_type;
    }

    public String getCon_meterno() {
        return con_meterno;
    }

    public void setCon_meterno(String con_meterno) {
        this.con_meterno = con_meterno;
    }

    public String getCon_date() {
        return con_date;
    }

    public void setCon_date(String con_date) {
        this.con_date = con_date;
    }

    public String getCnic() {
        return cnic;
    }

    public void setCnic(String cnic) {
        this.cnic = cnic;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}

