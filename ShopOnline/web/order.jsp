<%-- 
    Document   : order
    Created on : 11 Jan, 2017, 1:27:49 PM
    Author     : My
--%>

<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
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
            
            
            img{
                
                
                height: 200px;
                width: 200px;
            }
            caption{
                color:#666666;
                font-style: italic;
                font-size: 25px;
            }
            
            
           
        </style>
        
    </head>
    
    <body>
        <form action="vieworderlist.jsp" method="post">
            <center>
        <table border="1" >
            <caption>Place Order</caption>
            <tr>
                <th><b>Image</b></th>
                <th><b>ProductId</b></th>
                <th><b>ProductName</b></th>
                <th><b>ProductCost</b></th>
                <th><b>Company</b></th>
                <th><b>Order</b></th>
                
            </tr>
            
            <%
           
           
          
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
            PreparedStatement ps = con.prepareStatement("select proid,proname,procost,company,imgpath from products");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
            
             
              
            

            %>
            
            
            <tr>
                <td><img src="<%=rs.getString("imgpath")%>"></td>
                <td><%=rs.getString("proid")%></td>
                <td><%=rs.getString("proname")%></td>
                <td><%=rs.getString("procost")%></td>
                <td><%=rs.getString("company")%></td>
                <td><a style="font-size:10pt;color:white;background-color:green;border:2px solid #336600;padding:10px" href="productDescription.jsp?proid=<%=rs.getString("proid")%>">Order</a></td>
                
            </tr>
            
            
            
            <%}%>
            
            
            
        </table>
            
            </center>
        </form>
        
        
        
        
        
        
    </body>
</html>
