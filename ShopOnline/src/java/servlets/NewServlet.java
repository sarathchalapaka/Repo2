/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author My
 */
public class NewServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          
            
            String firstname = request.getParameter("firstname");
     String lastname = request.getParameter("lastname");
     String password = request.getParameter("password1");
     String email = request.getParameter("email");
     String mobile =request.getParameter("mobile");
     String gender = request.getParameter("gender");
     String dob = request.getParameter("dob");

            System.out.println(firstname);
            System.out.println(lastname);
            System.out.println(password);
            System.out.println(email);
            System.out.println(mobile);
            System.out.println(gender);
            System.out.println(dob);
     
     
    HttpSession session =request.getSession();
    session.setAttribute("firstname", firstname);
    session.setAttribute("lastname",lastname);
    session.setAttribute("password",password);
    session.setAttribute("email",email);
    session.setAttribute("mobile",mobile);
    session.setAttribute("gender",gender);
    session.setAttribute("dob",dob);
    
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
      PreparedStatement ps =con.prepareStatement("insert into registration values(?,?,?,?,?,?,?)");
      ps.setString(1,firstname);
      ps.setString(2,lastname);
      ps.setString(3,password);
      ps.setString(4,email);
      ps.setString(5,mobile);
      ps.setString(6,gender);
      ps.setString(7,dob);
      
     int i =  ps.executeUpdate();
     
     if(i==1){
     
       
         
     response.sendRedirect("userhome.jsp");
    
     }
      
     
            
            
        }catch(Exception e){
        
            System.out.println("Exception raised :"+e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
