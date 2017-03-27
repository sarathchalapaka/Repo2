<%-- 
    Document   : viewprofile
    Created on : 11 Jan, 2017, 1:27:30 PM
    Author     : My
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="userhome.jsp" %>
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
        
        <form action="updateprofile.jsp" method="post">
            <center>
            <table>
               
                
                
                
                
                
               <tr><td><b>First Name :</b></td><td><input type="text" name="firstname" value="<%=session.getAttribute("firstname")%>"/></td></tr>     
                <tr><td><b>Last Name :</b></td><td><input type="text" name="lastname" value="<%=session.getAttribute("lastname")%>"/></td></tr>     
                 <tr><td><b>Password :</b></td><td><input type="text" name="password" value="<%=session.getAttribute("password")%>"/></td></tr>     
                    <tr><td><b>Email :</b></td><td><input type="text" name="email" value="<%=session.getAttribute("email")%>"/></td></tr>     
                   <tr><td><b>Mobile : </b></td><td><input type="text" name="mobile" value="<%=session.getAttribute("mobile")%>"/></td></tr>     
                   <tr><td><b>Gender :</b></td><td><input type="text" name="gender" value="<%=session.getAttribute("gender")%>"/></td></tr>     
                      <tr><td><b>DOB :</b></td><td><input type="text" name="dob" value="<%=session.getAttribute("dob")%>"/></td></tr>     
                      <tr><td><br></td></tr>
                      <br>   <tr><td><input type="submit" value="UPDATE PROFILE" style="font-size:7pt;color:white;background-color:green;border:2px solid #336600;padding:10px"></td></tr>
                
            </table> 
            
            </center>
        </form>
        
    </body>
</html>
