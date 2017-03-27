<%-- 
    Document   : updateprofile
    Created on : 11 Jan, 2017, 11:59:25 PM
    Author     : My
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try{
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname"); 
String password = request.getParameter("password");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","tiger");

PreparedStatement ps = con.prepareStatement("update registration set firstname=?,lastname=?,password=?,email=?,mobile=?,gender=?,dob=? where firstname=?");
         
ps.setString(1,firstname);
ps.setString(2,lastname);
ps.setString(3,password);
ps.setString(4,email);
ps.setString(5,mobile);
ps.setString(6,gender);
ps.setString(7,dob);
ps.setString(8,firstname);

int i = ps.executeUpdate();

if(i==1)
{
      response.sendRedirect("login.jsp?mess=updatedprofilesuccessfully");

}
else{

response.sendRedirect("error.jsp");


}



    }catch(Exception e){}



%>