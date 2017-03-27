<%-- 
    Document   : uploadproduct
    Created on : 11 Jan, 2017, 1:42:13 PM
    Author     : My
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="adminhome.jsp" %>
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
        <form action="./upload" method="post">
    <center>
        <table>
            <caption>Upload New Products</caption>
            <tr><td><b>ProductID : </b></td><td><input type="text" name="proid"/></td></tr>
            <tr><td><b>ProductName : </b></td><td><input type="text" name="proname"/></td></tr>
            <tr><td><b>Cost :</b></td><td><input type="text" name="procost"/></td></tr>
            <tr><td><b>Company :</b></td><td><input type="text" name="company"/></td></tr>
            <tr><td><b>Upload Image:</b></td><td><input type="text" name="imgname"/></td></tr>
            <tr><td> <b>Items :</b> <select name="num">
                        
                 <option selected>--ITEMS--</option>
                <option value="10" >10</option>
                <option value="20">20</option>
            </select></td></tr>
            <tr><td><br></td></tr>
  <tr><td><input  type="submit" id="more" value="Upload Product" style="font-size:10pt;color:white;background-color:green;border:2px solid #336600;padding:10px"></td></tr>

                
                
            
        </table>
    </center>
        </form>
    </body>
</html>
