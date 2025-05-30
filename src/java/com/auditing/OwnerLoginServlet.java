/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.auditing;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author sentamilpandi.m
 */
public class OwnerLoginServlet extends HttpServlet {
      String Username="";
      String Password="";
      String filename;
      String productkey="";

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OwnerLoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OwnerLoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session1=request.getSession();
        
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        
        try
        {   
             ArrayList list=new ArrayList();
             Username=request.getParameter("username");
             Password=request.getParameter("password");
             filename=request.getParameter("filename");  
             productkey=request.getParameter("productkey");
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/publicauditing","root","password");
            st=con.createStatement();
            rs=st.executeQuery("Select * from dataownerreg where username='"+Username+"' and password='"+Password+"'");
            if(rs.next())
            {
               File file=new File("D:/"+Username);
               System.out.println("WWWWWWWWWWW"+Username);
               if(!(file.exists()))
               {
                   file.mkdir();
               }
                String group=rs.getString("username");
                String productkey=rs.getString("productkey");
                System.out.println("UUUUUUUUUUUU"+group);
                System.out.println("FFFFFFFFFFFFFF"+productkey);
                response.sendRedirect("Upload.jsp");
                
                //File[] files=new File("D:/"+group).listFiles(); 
                File[] files=new File("D:/"+group).listFiles(); 
                 System.out.println(">>>>>>>>>"+files.length);     
                    //if(files!=null && files.length>0)                    
                        for(int i=0;i<files.length;i++) {
                            String filename=files[i].getName();                                
                            list.add(filename);                            
                       }
                        session1.setAttribute("group", group);           
                        session1.setAttribute("filename", list);
                        session1.setAttribute("username", Username); 
                        session1.setAttribute("productkey", productkey);
            }
            else
            {
                
            }           
            
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
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
