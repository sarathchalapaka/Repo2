<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Styles.css">
        <style>
            
            h1{
                
                color:#666666;
                font-style: italic;
               
            }
            
            body{
               padding-top: 70px;
            }
                
             
            
        </style>
        
        
    </head>
    
    
    <body>
    <center>
        <table>
            <ul>
                
                <li>  <a href="viewprofile.jsp">View Profile</a></li>
                <li><a href="order.jsp">Shopping Zone</a></li>
                <li> <a href="vieworderlist.jsp"> Orders List</a></li>
                <li><a href="home.jsp">Logout</a></li>
        
            </ul>
        </table>
        <hr>
        
        <b>Welcome <%=session.getAttribute("firstname") %></b>

        
        
    </center>
    
    
    
    
    </body>
</html>
