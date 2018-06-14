<%-- 
    Document   : frmproducto
    Created on : 11-jun-2018, 15:21:20
    Author     : Cristoffer Torrealba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <%
            String vpara=request.getParameter("txtpara");
            %>
        <table border="1">
            <tr>
                <th>Operacion:</th>
                <td>
                    <%
                        if(vpara.equals("N"))
                        out.print("Nuevo");
                        if(vpara.equals("M"))
                        out.print("Modificar");
                        if(vpara.equals("E"))
                        out.print("Eliminar");
                        %>
                </td>
            </tr>
            <tr>
                <th>RUT</th>
                <td><input type="text" name="rut" value=""</td>
            </tr>
            <tr>
                <td>NOMBRE</td>
                <td><input type="text" name="nombre" value=""</td>
            </tr>
            <tr>
                <td>EDAD</td>
                <td><input type="text" name="edad" value=""</td>
            </tr>
            <tr>
                <td>CIUDAD</td>
                <td><input type="text" name="ciudad" value=""</td>
            </tr>
            <tr align="center">
                <td colspan="2"<input type="submit" value="<%
                        if(vpara.equals("N"))
                        out.print("Nuevo");
                        if(vpara.equals("M"))
                        out.print("Modificar");
                        if(vpara.equals("E"))
                        out.print("Eliminar");
                        %>"</td>
            </tr>
            
        </table>
    </center>
    </body>
</html>
