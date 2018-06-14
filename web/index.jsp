<%-- 
    Document   : index
    Created on : 11-jun-2018, 15:14:13
    Author     : Cristoffer Torrealba
--%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Vector"%>
<%@page import="Beans.metodo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <script>
            function Nuevo(f1){
                f1.txtpara.value="N";
                f1.action="frmproducto.jsp";
                f1.submit();
                return true;
            }
            </script>
    </head>
    <body>
        <h1>Usuarios</h1>
        <form name="f1" method="POST">
            <center>
        <table border="1">
            <thead>
                <tr align="center">
                    <th colspan="6">MANTENIMIENTO DE USUARIOS</th>
                </tr>
                <tr align="center">
                    <td>RUT</td>
                    <td>NOMBRE</td>
                    <td>EDAD</td>
                    <td>CIUDAD</td>
                    <td colspan="2">Mantenimiento</td>
                </tr>
                
                
                <%
                    metodo objpro= new metodo();
                    Vector producto= new Vector();
                    producto=objpro.MostrarDatos();
                    
                    for(int i=0;i<producto.size();i++){
                        objpro=(metodo)producto.get(1);
                        
                    }
                    %>
                    
                <tr align="center">
                    <td><%=objpro.getRut()%></td>
                    <td><%=objpro.getNombre()%></td>
                    <td><%=objpro.getEdad()%></td>
                    <td><%=objpro.getCiudad()%></td>
                    <td><a href="frmproducto.jsp?txtpara=M"</a>Modificar</td>
                    <td><a href="frmproducto.jsp?txtpara=E"</a>Eliminar</td>
                </tr>
                <tr align="center">
                    <td colspan="6"><input type="submit" value="Nuevo" onclick="return Nuevo(f1)"/></td>
                </tr>
            </thead>
            
        </table>
                <input type="hidden" name="txtpara" value="N"/>
            </center>
        </form>
    </body>
</html>
