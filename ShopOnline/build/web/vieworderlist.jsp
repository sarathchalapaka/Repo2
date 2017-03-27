<%-- 
    Document   : vieworderlist
    Created on : 11 Jan, 2017, 1:28:18 PM
    Author     : My
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="userhome.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            h1{
                
                color: red;
            }
            
        </style>
        
        
        
    </head>
    <body>
    <center>
        <h1>Thanks for Shopping Your Order Details</h1>
        
        
        
        <table border="1">
            
            <tr>
                <th><b>Proid</b></th>
                <th><b>Proname</b></th>
                <th><b>ProductCost</b></th>
                <th><b>Selected Items</b></th>
                <th><b>Final Cost</b></th>
                
               
            </tr>
            <%
            
                String email =(String)session.getAttribute("email");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
            PreparedStatement ps = con.prepareStatement("select proid,proname,procost,items,finalcost from orderedproducts where cust_email=?");
             ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
           
while(rs.next()){
            
            %>
            
            
            <tr>
                <td><b><%=rs.getString("proid")%></b></td>
                <td><b><%=rs.getString("proname")%></b></td>
                <td><b><%=rs.getString("procost")%></b></td>
                <td><b><%=rs.getString("items")%></b></td>
                <td><b><%=rs.getString("finalcost")%></b></td>
                
            </tr>
            
          <%}%>  
            
            
            
        </table>
        
        
        
        
        
        
        
        
    </center>
    </body>
</html>
