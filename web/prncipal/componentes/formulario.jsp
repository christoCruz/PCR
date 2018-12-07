<%-- 
    Document   : formulario agregar
    Created on : 12-06-2018, 02:01:51 PM
    Author     : Curacao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="ingresar.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
         
          <%
        String nombre=request.getParameter("no");
        String dess=request.getParameter("de");
        String press=request.getParameter("pre");
        if(nombre!=null&& dess!=null)
        {
            String qry="insert into catalogo(nombre,descripcion,precio) value('"+nombre+"','"+dess+"','"+press+"')";
            sql.executeUpdate(qry);
            out.print("registrado");
        } else{
        %>
        <form name="pro"  method="post" action="formulario.jsp">
  
            Nombre:<input type="text" name="no"/><br/>
            Descripcion:<input type="text" name="de"/><br/>
            Precio:<input type="text" name="pre"/><br/>
            <input type="submit" value="guardar"/>
                           
        </form>
        <%} //else%>
      
      
    </body>
</html>
