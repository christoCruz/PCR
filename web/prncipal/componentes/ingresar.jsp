

<%@page contentType="text/html" pageEncoding="UTF-8"
   import=" java.sql.Connection"
      import=" java.sql.DriverManager"
      import=" java.sql.ResultSet"
      import=" java.sql.Statement"
      import=" java.sql.SQLException"
        %>
<%
    
Connection conex =null;
Statement sql=null;
try{
    Class.forName("com.mysql.jdbc.Driver");
conex=(Connection)DriverManager.getConnection("jdbc:mysql://127.0.0.1/tienda", "root","admin");
sql=conex.createStatement();
out.print("conexcion hecha");
}
catch(Exception e){
    out.print("error"+e);
}

%>
