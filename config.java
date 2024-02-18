package config;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author pip
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class config {
    public Connection Project_Akhir;
    public Connection connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("berhasil koneksi ke jdbc driver");
        }catch(ClassNotFoundException ex){
            System.out.println("gagal koneksi ke jdbc driver");
        }
        try{
            String url = "jdbc:mysql://localhost:3306/karyawan";
            Project_Akhir = DriverManager.getConnection(url,"root","");
            System.out.println("berhasil koneksi ke mysql");
        }catch(Exception ex){
            System.out.println("gagal koneksi ke mysql");
        }
        return Project_Akhir;
    }


public static void main(String[]args){
    java.sql.Connection conn = new config().connect();
    }

}
