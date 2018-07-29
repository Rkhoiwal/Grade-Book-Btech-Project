/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servletmethod.checkmethod;



/**
 *
 * @author Rahul
 */
@WebServlet(name = "ForgetPassword", urlPatterns = {"/third"})
public class ForgetPassword extends HttpServlet {

    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            String u = request.getParameter("Roll_No");
            String p = request.getParameter("Passwd");
            
       try {
            if(checkmethod.value(u,p)){
                
                RequestDispatcher r = request.getRequestDispatcher("Profilepage.jsp");
                r.forward(request, response);
                
            }
            else{
                out.print("Wrong username or password entered");
                RequestDispatcher r = request.getRequestDispatcher("Errorpage.html");
                r.include(request, response);
            }
             out.close();
        }
      
       catch (SQLException | ClassNotFoundException ex) {
            
        }
        }
    }

    
    
