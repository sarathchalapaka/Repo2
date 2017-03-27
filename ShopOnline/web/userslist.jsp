<%-- 
    Document   : userslist
    Created on : 11 Jan, 2017, 1:41:54 PM
    Author     : My
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@include file="adminhome.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
             #more {
                   background:none;
  border:none;
  color:#FFF;
  font-family:Verdana, Geneva, sans-serif;
  cursor:pointer;

}




        </style>
    </head>
    <body>
        <form action="delete.jsp" method="post">
    <center>
        
        <table border="1">
            <caption>Users List</caption>
            <tr>
                <th><b>First Name</b></th>
                <th><b>Last Name</b></th>
                <th><b>Password</b></th>
                <th><b>Email</b></th>
                <th><b>Mobile</b></th>
                <th><b>Gender</b></th>
                <th><b>DOB</b></th>
                <th><b>DeleteUser</b></th>
                
                
                
            </tr>
            
       
        
    
    <%          
               Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
              PreparedStatement ps = con.prepareStatement("select * from registration");
             ResultSet rs =  ps.executeQuery();
              
    while(rs.next()){
    

       
    
    
    %>
    
    <tr>
        <td><%=rs.getString("firstname")%></td>
        <td><%=rs.getString("lastname")%></td>
        <td><%=rs.getString("password")%></td>
        <td><%=rs.getString("email")%></td>
        <td><%=rs.getString("mobile")%></td>
        <td><%=rs.getString("gender")%></td>
        <td><%=rs.getString("dob")%></td> 
        <td><a style="font-size:10pt;color:white;background-color:green;border:2px solid #336600;padding:10px" href="delete.jsp?email=<%=rs.getString("email")%>">Delete</a></td>
        
    
    </tr>
    <%}%>
     </table>
       </center>
        </form></body>
</html>
