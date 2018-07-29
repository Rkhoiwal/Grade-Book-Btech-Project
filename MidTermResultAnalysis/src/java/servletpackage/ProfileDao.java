/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rahul
 */
@WebServlet(name = "ProfileDao", urlPatterns = {"/ProfileDao"})
public class ProfileDao extends HttpServlet {

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
        
        
        String n = request.getParameter("name");
        String f = request.getParameter("fname");
        String enr = request.getParameter("enr");
        String batch = request.getParameter("batch");
        String year = request.getParameter("year");
        String sem = request.getParameter("sem");
        String sex = request.getParameter("sex");
        String age = request.getParameter("age");
        String e = request.getParameter("email");
        String phone = request.getParameter("fphone");
        String fphone = request.getParameter("phone");
          
               
        
        PreparedStatement ps=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Student","root", "root"); 
            ps=con.prepareStatement("insert into profile_detail values (?,?,?,?,?,?,?,?,?,?,?)");
            
            ps.setString(1, n);
            ps.setString(2, f);
            ps.setString(3, enr);
            ps.setString(4, batch);
            ps.setString(5, year);
            ps.setString(6, sem);
            ps.setString(7, sex);
            ps.setString(8, age);
            ps.setString(9,e);
            ps.setString(10,phone);
            ps.setString(11,fphone);
            int x=ps.executeUpdate();
             if(x>0)
            {
                
                response.sendRedirect("Profilepageafterlogin.jsp");
                
                     			            
            } 
             
     }
         catch(ClassNotFoundException | SQLException ep)
        {
        out.println(ep);
        }
           //RequestDispatcher rd1=request.getRequestDispatcher("Login.jsp"); 
//       try {
//            if(checkmethod.value(u,p)){
//               
//                RequestDispatcher r = request.getRequestDispatcher("/second");
//                r.forward(request, response);
//                
//            }else{
//                out.print("Wrong username or password entered");
//                RequestDispatcher r = request.getRequestDispatcher("Errorpage.html");
//                r.include(request, response);
//            }
//             out.close();
//        }
      
//       catch (SQLException | ClassNotFoundException ex) {
//            
//        }
//        
    }
 
    

}
