/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kereta;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Chutenks
 */
public class Terbang {
    public Connection con;
    public PreparedStatement pst;
    
    //query menambahkan data penerbangan ke database
    public void tambah() throws SQLException, ClassNotFoundException{
            
            Class.forName("com.mysql.jdbc.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kereta","root","");
            String sql = "insert into penerbangan (nama_pemesan,jenis_penerbangan,tujuan,jumlah,kelas,harga)" + "values(?,?,?,?,?,?)" ;
            pst = con.prepareStatement(sql);
    }
   public void delete() throws SQLException, ClassNotFoundException{
            Class.forName("com.mysql.jdbc.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kereta","root","");
            String sql = "delete from penerbangan where id_tiket = ?";
            pst = con.prepareStatement(sql);
    }
   
   public void show_edit() throws ClassNotFoundException, SQLException{
            Class.forName("com.mysql.jdbc.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kereta","root","");
            String sql = "Select * from penerbangan where id_tiket = ?" ;
            pst = con.prepareStatement(sql);
   }
   
   public void edit() throws SQLException, ClassNotFoundException{
            
            Class.forName("com.mysql.jdbc.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kereta","root","");
            String sql = "UPDATE penerbangan SET nama_pemesan = ?, jenis_penerbangan = ?, tujuan = ?, jumlah = ?, kelas = ?, harga = ? where id_tiket = ?" ;
            pst = con.prepareStatement(sql);
    }
}
