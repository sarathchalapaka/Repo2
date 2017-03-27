<%-- 
    Document   : delete
    Created on : 11 Jan, 2017, 7:38:47 PM
    Author     : My
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try{
        
        
        
        
        
        
   String email =request.getParameter("email");
   

   
   
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
PreparedStatement ps = con.prepareStatement("delete from registration where email=?");

ps.setString(1,email);

int i =ps.executeUpdate();


if(i==1)
{
    response.sendRedirect("userslist.jsp");

}

else{
         response.sendRedirect("home.jsp");

}
    
    }catch(Exception e){System.out.println(e);
    }
%>