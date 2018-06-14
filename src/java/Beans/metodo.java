/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;


/**
 *
 * @author Cristoffer Torrealba
 */
public class metodo {
    private String rut;
    private String nombre;
    private String edad;
    private String ciudad;

    public metodo(String rut, String nombre, String edad, String ciudad) {
        this.rut = rut;
        this.nombre = nombre;
        this.edad = edad;
        this.ciudad = ciudad;
    }
    


    public metodo() {
    }

    public static Vector MostrarDatos(){
        
        Vector producto=null;
        try{
            dbmanager man=new dbmanager();
            Connection cn=man.Conectar();
            Statement st=man.Conectar().createStatement();
            ResultSet rs=st.executeQuery("select * from Personas");
            producto=new Vector();
            
            while(rs.next()){
                producto.add(new metodo(rs.getString("rut"),rs.getString("nombre"), rs.getString("edad"), rs.getString("ciudad")));
                return producto;
            }
        }catch(Exception e){
           
            
        }
        return null;
    }


    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
    

    
}
