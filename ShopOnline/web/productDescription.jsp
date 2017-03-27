<%-- 
    Document   : productDescription
    Created on : 12 Jan, 2017, 11:48:59 PM
    Author     : My
--%>

<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Styles.css">
        <style>
             img{
                
                height:300px;
                width:300px;
               }
               
              
               
               h1{
                   color: whitesmoke;
    font-style: initial;
    font-size: 25px;
    font-family: cursive ;
                   
               }
               
               body{
                   
                   padding-top: 60px;
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
        <form method="post" action="shippingaddress.jsp">
            
            <center>   <h1> Product Description</h1></center>
        <hr>
        <br>
    <center>
       
        
        
        
        <%
          
          
               String pid = request.getParameter("proid");
               Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
               PreparedStatement ps = con.prepareStatement("select  proid,proname,procost,company,imgpath from products where proid=?");
               ps.setString(1,pid);
              ResultSet rs =  ps.executeQuery();
              if(rs.next()){
               
                   session.setAttribute("proid",rs.getString("proid"));
            session.setAttribute("proname",rs.getString("proname"));
            session.setAttribute("procost",rs.getString("procost"));
            session.setAttribute("company",rs.getString("company"));
            
        
        %>
        
        
         <table>
             
             <tr><td><img  src ="<%=rs.getString("imgpath")%>"/><br></td></tr>
             
             
            
             <tr><td><b>Prdouct Id :</b></td><td><b> <%=rs.getString("proid")%></b></td></tr>
             <tr><td><b>Name :</b></td><td><b> <%=rs.getString("proname")%></b> </td>  </tr>
             <tr><td> <b>Cost :</b></td><td><b><%=rs.getString("procost")%></b></td></tr>
            <tr><td> <b>Company :</b></td> <td> <b><%=rs.getString("company")%></b></td> </tr>
            <tr><td> <b>Quantity</b> <select name="num">
                         
            <option value="1">1</option>
            <option value="2">2</option>
                    </select></td></tr>
            <tr><td><br></td></tr>
            <tr><td>  <input type="submit" value="Proceed" style="font-size:10pt;color:white;background-color:green;border:2px solid #336600;padding:10px"/></td></tr>
        
        
        
        
        <%}%>
        
        </table>
    </center>
        </form></body>
</html>
