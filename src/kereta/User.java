/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kereta;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Chutenks
 */
public class User {
    public Connection con;
    public PreparedStatement pst;
    
    //query login ke database
    public void login() throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kereta","root","");
            String sql = "Select * from user where username=? and password =?";
            pst = con.prepareStatement(sql);
    }
    
}
