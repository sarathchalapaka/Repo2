/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author My
 */
public class uploadproduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
                
                
           try{     
               
               
               
                String pid = request.getParameter("proid");
                String pname = request.getParameter("proname");
                String pcost = request.getParameter("procost");
                String company = request.getParameter("company");
                String num = request.getParameter("num");
                int items= Integer.parseInt(num);
                String imgname = request.getParameter("imgname");
               
               
               
               
               
               
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
           PreparedStatement ps = con.prepareStatement("insert into products values(?,?,?,?,?,?)");
            ps.setString(1,pid);
            ps.setString(2,pname);
            ps.setString(3,pcost);
            ps.setString(4,company);
            ps.setInt(5,items);
            ps.setString(6,imgname);
          
          int i =   ps.executeUpdate();
          
          if(i==1){
                RequestDispatcher rd= request.getRequestDispatcher("viewproduct.jsp");
          rd.forward(request, response);
          response.sendRedirect("viewproduct.jsp");
              
        }
    }catch(Exception e ){System.out.println(e);}
        
        
    }
    
    
    
    
    
    
    
}
