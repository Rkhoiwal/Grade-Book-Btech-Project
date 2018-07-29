/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletmethod;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Rahul
 */
public class checkmethod {

    public static boolean value(String email, String password) throws SQLException, ClassNotFoundException {
        boolean status = false;
        try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Student","root", "root"); 
                    PreparedStatement ps = con.prepareStatement("select * from personal_detail where email=? and password=?");
                    

                ps.setString(1, email);
                ps.setString(2, password);

                ResultSet rs = ps.executeQuery();
                status = rs.next();

                rs.close();
            }

         catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }

        return status;

    }
}
