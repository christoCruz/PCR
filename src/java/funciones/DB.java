/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package funciones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Curacao
 */
public class DB {
    private static Connection conn = null;
   
    public static Connection getConncetion() throws ClassNotFoundException{
        
        
        if(conn == null){
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost/tienda", "root", "admin");
            } catch (SQLException ex) {
                Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return conn;
        
    }
    public static void cerrarConexion(){
        
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
    }
    //agregar nuevo producto
     public static boolean addUser(String nombre, String descripcion,String precio){

                    
        boolean exito = false;
            
        
        try {

            PreparedStatement query = conn.prepareStatement("INSERT INTO catalogo VALUES(null, ?, ?, ?)");
            query.setString(1, nombre);
            query.setString(2, descripcion);
            query.setString(3, precio);
            
            query.executeUpdate();
            
            exito = true;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return exito;
        
    }
     //eliminar un producto
    public static void deleteUser(int id){
        
     try {
            
            PreparedStatement query = conn.prepareStatement("DELETE FROM catalogo WHERE id=?");
            query.setInt(1, id);
            
            query.executeUpdate();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    //modificar un producto
     public static void editUser(int id, String nombre, String descripcion, String precio, String imagen){
     
        try {

            PreparedStatement query = conn.prepareStatement("UPDATE catalogo SET nombre=?, descripcion=?, precio=?, imagen=? WHERE id=?");
            
            query.setString(1, nombre);
            query.setString(2, descripcion);
            query.setString(3, precio);
            query.setString(4, imagen);
            query.setInt(5, id);
            query.executeUpdate();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
     //muestra de datos
     public static ResultSet getUsuarios(){
        
        ResultSet resultado = null;
        
        try {
            
            PreparedStatement consulta = conn.prepareStatement("SELECT * FROM catalogo");
          
            resultado = consulta.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return resultado;
    }
     
}
