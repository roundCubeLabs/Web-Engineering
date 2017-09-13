/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Usama Moin
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {



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
        String uname=request.getParameter("username");
        String pass=request.getParameter("pass");
        
        if(uname.equals("sania mirza") && pass.equals("sania") ){
            HttpSession session=request.getSession();
            session.setAttribute("error", "false");
            session.setAttribute("username", uname);
            response.sendRedirect("welcome.jsp");
         }
        else{
            HttpSession session=request.getSession();
            session.setAttribute("error", "true");
            response.sendRedirect("index.jsp");
        }
                
                
    }
    
    //</editor-fold> 


}
