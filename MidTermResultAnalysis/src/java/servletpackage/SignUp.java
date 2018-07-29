/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletpackage;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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
@WebServlet(name = "SignUp", urlPatterns = {"/sg"})
public class SignUp extends HttpServlet {

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
        String r = request.getParameter("Roll_No");
        String n = request.getParameter("Name");
        String e = request.getParameter("Email");
        String p = request.getParameter("Passwd");
        
        
        
       
        
        PreparedStatement ps=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Student","root", "root"); 
            ps=con.prepareStatement("insert into personal_detail values (?,?,?,?)");
            ps.setString(1, r);
            ps.setString(2, n);
            ps.setString(3, e);
            ps.setString(4, p);
            int x=ps.executeUpdate();
             if(x>0)
            {
                out.println("<html><body><h1 style=font-family:brush script std;font-size:50px><center>");
                out.println("<br><br><br><br><br><p><i>ACCOUNT CREATED SUCCESSFULLY</p></i>");
                out.println("</center></h1></body></html>");
                //response.sendRedirect("Login.jsp");
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet NewServlet</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<a id=\"login page\" href=\"homepage.jsp\">");
                out.print("Go to Login Page");
                out.print("</a>");
                out.println("</ul>");
                out.println("</body>");
                out.println("</html>");
                     			            
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
