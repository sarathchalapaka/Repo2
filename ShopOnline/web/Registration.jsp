<%-- 
    Document   : Registration
    Created on : 10 Jan, 2017, 6:06:15 PM
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
            submit{
    
    background-color: blue
    
}

caption{
    
    color: whitesmoke;
    font-style: initial;
    font-size: 25px;
    font-family: cursive;
    font-weight: bold;
    
}
b{
     color: whitesmoke;
    font-style: initial;
    font-size: 25px;
    font-family: cursive ;
    
}

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
        <form action="./NewServlet" method="post">
        <center>
                    

        <table>
            <caption>Sign Up</caption>
            
            <tr>   <td><b>Title :</b></td><td><select>
                    <option value="Mr">Mr</option>
                    <option value="Ms">Ms</option>
                    <option value="Mrs">Mr's</option>
                    
                     </select></td></tr>
             
               
                 <tr><td><b>First Name :</b></td><td><input type="text" name="firstname"/></td></tr>
                  <tr><td><b>Last Name :</b></td><td><input type="text" name="lastname"/></td></tr>
                  <tr><td><b>Password  :</b></td><td><input type="password" name="password1"/></td></tr>
           <tr><td><b>Confirm Password :</b></td><td><input type="password" name="password2"/></td></tr>
                      <tr><td><b>Email :</b></td><td><input type="text" name="email"/></td></tr>
                      <tr><td><b>Mobile:</b></td><td><input type="text" name="mobile"/></td></tr>
                      <tr><td><b>Gender:</b></td><td><input type="radio" value="male" name="gender"/><b>Male</b><input type="radio" value="female" name="gender"/><b>Female</b></td></tr>
             <tr><td><b>DOB(dd-mm-yyyy):</b></td><td><input type="datetime-local" name="dob"/></td></tr>
                   
                   <tr><td><br></td><tr>
                  <tr><td><input id="more" type="submit" value="SIGN UP" style="font-size:10pt;color:white;background-color:green;border:2px solid #336600;padding:10px"></td> <td><input id="more" type="reset" value="RESET" style="font-size:10pt;color:white;background-color:red;border:2px solid #336600;padding:10px"></td></tr>
               
        </table>
        </center>

        </form> 

</body>
</html>
