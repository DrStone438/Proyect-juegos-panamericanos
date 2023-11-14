/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package proyecto.panamericanos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Conexion {
    String bd = "juegos_panamericanos"; //qui estara el nombre de la base de datos
    String url = "jdbc:mysql://localhost:3306"; //aqui estara la direccion URL
    String user = "root"; //aqui es una variable de momento es usuario
    String password = "";//contraseña
    String driver = "com.mysql.cj.jdbc.Driver";
    Connection con;
    
    //aqui empieza el constructor
    Conexion(String bd){
        this.bd = bd;
        try{
            Class.forName(driver);
            con=DriverManager.getConnection(url+"/"+this.bd,user,password);
            System.out.println("se conecto a la BD");
        }catch(Exception ex){
            System.out.println("no se conecto a la BD");
            System.out.println(ex);
        }
    }
    public Connection getConnection(){
        return con;
    }
    void desconectar(){
        try{
            con.close();
        }catch(SQLException ex){
            System.out.println(ex);
        }
    }
}
