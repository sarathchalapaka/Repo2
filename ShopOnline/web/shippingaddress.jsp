<%-- 
    Document   : shippingaddress
    Created on : 12 Jan, 2017, 10:48:42 PM
    Author     : My
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Styles.css">
        <style>
            
            body{
                
               padding-top: 50px; 
                
            }
            #more {
                   background:none;
  border:none;
  color:#FFF;
  font-family:Verdana, Geneva, sans-serif;
  cursor:pointer;

}
            
            h1{
                color: whitesmoke;
    font-style: initial;
    font-size: 25px;
    font-family: cursive ;
            }
            
            
        </style>
    </head>
    <body>
    <center>  <h1>Payment &  Shipping Address</h1></center>
        <hr>
        <form action="finalpage.jsp" method="post">
    <center>
        <br>
        <table border="1">
            <tr>
                <th><b>Product id </b> </th>
                <th><b>Product Name</b></th>
                <th><b>Cost</b></th>
                <th><b>Items</b></th>
                <th><b>Final Cost</b></th>
                
                <th><b>Company</b></th>
            </tr>    
            <%
                     String num = request.getParameter("num");
                     int items = Integer.parseInt(num);
                     String cost=(String)session.getAttribute("procost");
                     int cost1 = Integer.parseInt(cost);
                     
                      int finalcost = items*cost1;
                      
                        session.setAttribute("num",num);
                       session.setAttribute("finalcost",finalcost);
            
            %>
            
            <tr>
                <td><%=session.getAttribute("proid")%></td>
                <td><%=session.getAttribute("proname")%></td>
                <td><%=session.getAttribute("procost")%></td>
                <td><%=items%></td>
                <td><%=finalcost%></td>
                <td><%=session.getAttribute("company")%></td>
            </tr>
            
            
        </table>
        
            <table>
                <b><caption>Shipping Address</caption></b>
                    
                <tr><td><b>Address Line1 : </b></td><td><input type="text" name="addressline1"/></td></tr>
                <tr><td><b>Address Line2 : </b></td><td><input type="text" name="addressline2"/></td></tr> 
                <tr><td><b>Pincode : </b></td><td> <input type="text" name="pincode"/></td></tr>
                <tr><td><b>City : </b></td><td><input type="text" name="city"/></td></tr>
                <tr><td><b>State : </b></td><td><input type="text" name="state"/></td></tr>
                
                <tr><td><br></td></tr>
                <tr><td><input type="submit" value="Submit" style="font-size:10pt;color:white;background-color:green;border:2px solid #336600;padding:10px"/></td></tr>
                
            
            
                        
                
            </table>
        
        
        
        
    </center>   
        
        
        
        
        
        
        
        
        </form>     
    </body>
</html>
