<%-- 
    Document   : correo
    Created on : 12-06-2018, 11:38:29 AM
    Author     : Curacao
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="funciones.controlador"%>
<%@page import="funciones.Correo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
            Correo c = new Correo();
            c.setContracena("c123456789c");
            c.setUsuarioCorreo("espruebap@gmail.com");
            c.setAsunto("Contacto");
            c.setMensaje("Hola " +request.getParameter("nombre")+" bienvenido a PCR estaremos en contacto");
            c.setDestino(request.getParameter("direccion"));
            c.setNombreArchivo("");
            c.setRutaArchivo("");
            
            controlador co= new controlador();
            if(co.enviacorreo(c))
                {
                out.print("<h1>mensaje enviado</h1>");
                out.print("</br><a href='ProyecFinal/Wep Page/index.jsp'>regresar</a>");
                }
                else{
                out.print("<h1>mensaje no enviado</h1>");
                out.print("</br><a href='index.jsp'>regresar</a>");
                }

            }catch(NumberFormatException ex)
                    {
                       out.print("<h1>ELementto enviado</h1>");
                       out.print("</br><a href='Web Pages/index.jsp'>ELementto enviado</a>");
            }catch(Exception e)
                {
                   out.print("<h1>"+e.getMessage()+"</h1>");
                   out.print("</br><a href='index.jsp'>ELementto enviado</a>");
                }

        %>
    </body>
</html>
