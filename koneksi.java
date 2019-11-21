/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cek_stock;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Statement;
import java.sql.*;
import java.util.logging.Level;
import javax.swing.JOptionPane;

public class koneksi {
    Connection con;
    Statement stm;
    public void config(){
        try {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/liquid", "root", "");
            stm = con.createStatement();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "koneksi gagal "+e.getMessage());
        }
    }
    public static Connection setKoneksi() {
         String konString = "jdbc:mysql://localhost:3306/liquid";
        Connection koneksi = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            koneksi = (Connection) DriverManager.getConnection(konString,"root","");
            System.out.println("Koneksi Berhasil");
        } catch (ClassNotFoundException ex){
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE,null,ex);
            System.out.println("Koneksi Gagal");
        } catch (SQLException ex){
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE,null,ex);
            System.out.println("Koneksi Gagal");
        }
        return koneksi;
    }
    public static int execute(String SQL){
        int status = 0;
        Connection koneksi = setKoneksi();
        try{
            Statement st = koneksi.createStatement();
            status = st.executeUpdate(SQL);
        }catch (SQLException ex){
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE,null,ex);   
        }return status;
    }
    public static ResultSet executeQuery(String SQL){
        ResultSet rs = null;
        Connection koneksi = setKoneksi();
        try{
            Statement st = koneksi.createStatement();
            rs = st.executeQuery(SQL);
        }catch(SQLException ex){
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE,null,ex);
        }
        return rs;
    }
}
