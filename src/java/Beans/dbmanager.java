/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



/**
 *
 * @author Cristoffer Torrealba
 */
public class dbmanager {
    private  String user="torrealba";
    private  String pass="root";
    private  String url="jdbc:sqlserver://localhost:1433;databaseName=PERSONA";
    private  String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";

    public dbmanager(){
    }
    public Connection Conectar() {
        try {
            
            Class.forName(this.driver);
            System.out.println("Entrando a la conexion... ejemplo que se tiene que ver reflejado en github");
                return (DriverManager.getConnection(url,user,pass));
        }
        catch (Exception e) {
        }
        return null;
    }  

    public void Desconectar(Connection cn){
        try{
            cn.close();
        }catch(Exception e){
            
        }
    }

    
}
