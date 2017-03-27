<%-- 
    Document   : updateproduct
    Created on : 11 Jan, 2017, 9:42:37 PM
    Author     : My
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
try{


  String pid = request.getParameter("proid");
                String pname = request.getParameter("proname");
                String pcost = request.getParameter("procost");
                String company = request.getParameter("company");
                String num = request.getParameter("num");
                int items= Integer.parseInt(num);
                
                
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
     PreparedStatement ps = con.prepareStatement("update products set items=? where proid=? ");
      
    ps.setInt(1,items);
    ps.setString(2,pid);
  int i = ps.executeUpdate();


if(i==1){

response.sendRedirect("uploadproduct.jsp?mess=updatesuccess");

}



}catch(Exception e ){}









%>