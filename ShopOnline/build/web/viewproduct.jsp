<%-- 
    Document   : viewproduct
    Created on : 11 Jan, 2017, 1:42:35 PM
    Author     : My
--%>


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
        <form  action="updateproduct.jsp" method="post">
    <center>
        
        <table>
            
            <tr><td><b>Product Id :</b></td><td><input type="text" name="proid" value="<%=request.getParameter("proid")%>"/></td></tr>
            <tr><td><b>Product Name :</b></td><td><input type="text" name="proname"  value="<%=request.getParameter("proname")%>"/></td></tr>
            <tr><td><b>Product Cost :</b></td><td><input type="text" name="procost" value="<%=request.getParameter("procost")%>"/></td></tr>
            <tr><td><b>Company : </b></td><td><input type="text" name="company" value="<%=request.getParameter("company")%>"/></td></tr>
            <tr><td><b>Items : </b></td><td><input type="text" name="num" value="<%=request.getParameter("num")%>"/></td></tr>
            <tr><td><br></td></tr>
            <tr><td><input type="submit" value="Update product" style="font-size:7pt;color:white;background-color:green;border:2px solid #336600;padding:10px"/></td></tr>


            
        </table>
        
        
        
    </center>
        </form>    
            
    </body>
</html>
