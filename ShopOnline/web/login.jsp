<%-- 
    Document   : login
    Created on : 10 Jan, 2017, 6:06:28 PM
    Author     : My
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index.html" %>
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
        <hr>
        <form action="login.jsp" method="post">
    <center>
        <table>
            <caption>User Login</caption>
            <tr><td><b>Email :</b></td><td><input type="text" class="textbox" name="email"/></td></tr>
            <tr><td><b>Password:</b></td><td><input type="password" name="password"/></td></tr>
            <tr><td><br><br></td></tr>
            <tr><td><input id="more" type="submit" value="LOGIN" style="font-size:10pt;color:white;background-color:green;border:2px solid #336600;padding:10px"></td><td><input id="more" type="reset" value="RESET" style="font-size:10pt;color:white;background-color:red;border:2px solid #336600;padding:10px"></td></tr>

        </table>
    
       
    </center>
        
    <%
         try{
            String email=  request.getParameter("email");
             String password =  request.getParameter("password");
         
             if(email.equals("admin")&&password.equals("admin"))
             {
                  response.sendRedirect("adminhome.jsp");
             
             }
             
             
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
           PreparedStatement ps =  con.prepareStatement("select * from registration where email=?");
             
             ps.setString(1,email);
             
           ResultSet rs = ps.executeQuery();
            
            if(rs.next())
            {
            
                  String pwd =  rs.getString("password");
            
                      if(password.equals(pwd))
                      {
                          session.setAttribute("firstname",rs.getString("firstname"));
                          session.setAttribute("lastname",rs.getString("lastname"));
                          session.setAttribute("password",rs.getString("password"));
                          session.setAttribute("email",rs.getString("email"));
                          session.setAttribute("mobile",rs.getString("mobile"));
                          session.setAttribute("gender",rs.getString("gender"));
                          session.setAttribute("dob",rs.getString("dob"));
                          response.sendRedirect("userhome.jsp");
                      }
            }
            
            else{
            
            response.sendRedirect("login.jsp");
            
            }
             
         }catch(Exception e ){}
    
         
    %>     
       
    
    
        </form>
    </body>
</html>
