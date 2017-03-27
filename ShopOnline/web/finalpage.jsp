<%-- 
    Document   : finalpage
    Created on : 12 Jan, 2017, 11:29:17 PM
    Author     : My
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


            
            <%
                String email = (String)session.getAttribute("email");
               String proid = (String)session.getAttribute("proid");
               String proname = (String)session.getAttribute("proname");
               String procost = (String)session.getAttribute("procost");
               String items = (String)session.getAttribute("num");
               Integer finalcost = (Integer)session.getAttribute("finalcost");
               
               String addressline1 = request.getParameter("addressline1");
               String addressline2 = request.getParameter("addressline2");
               String city = request.getParameter("city");
               String pincode = request.getParameter("pincode");
               String state = request.getParameter("state");
               

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
                PreparedStatement ps = con.prepareStatement("insert into orderedproducts values(?,?,?,?,?,?)");
                
                 ps.setString(1,proid);
                 ps.setString(2,proname);
                 ps.setString(3,procost);
                 ps.setString(4,items);
                 ps.setInt(5, finalcost);
                 ps.setString(6,email);
                 
                   int i = ps.executeUpdate();

                   if(i==1){
                   
                   PreparedStatement ps2 =  con.prepareStatement("insert into address values(?,?,?,?,?,?)");
                   ps2.setString(1,addressline1);
                   ps2.setString(2,addressline2);
                   ps2.setString(3,city);
                   ps2.setString(4,pincode);
                   ps2.setString(5,state);
                   ps2.setString(6,email);
                   
                   
                   int i1 =ps2.executeUpdate();
                   
                   
                   if(i1==1)
                   {
                         PreparedStatement ps3 = con.prepareStatement("delete from products where proid=?");
                         ps3.setString(1,proid);
                         int i2 =ps3.executeUpdate();
                     RequestDispatcher rd   = request.getRequestDispatcher("vieworderlist.jsp");
                     rd.forward(request, response);
                   
                   }
                   
                   }
                
                
                %>
            
       