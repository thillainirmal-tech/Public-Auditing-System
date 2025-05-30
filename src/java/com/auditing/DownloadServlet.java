/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.auditing;

import java.io.*;
import java.security.Key;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletOutputStream;

/**
 *
 * @author sentamilpandi.m
 */
public class DownloadServlet extends HttpServlet {
    static String filename;
 private static Key generateKey(String productkey) {
         String keyValue=productkey;         
        Key key = new SecretKeySpec(keyValue.getBytes(), "AES");        
        return key;
    }   
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
            out.println("<title>Servlet DownloadServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DownloadServlet at " + request.getContextPath() + "</h1>");
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
           HttpSession session1=request.getSession(true);
           String productkey=request.getParameter("productkeys");
           String group=session1.getAttribute("group").toString();
           filename=request.getParameter("filename");
           //String productkey=session1.getAttribute("productkey").toString();
                             
        try
        {
            String TempDownloadDirectory="D:/temp15/";
            File file=new File(TempDownloadDirectory);
            if(!(file.exists())) {
                file.mkdir();           
            }
            Key key1 = generateKey(productkey);
                    System.out.println(productkey+" ######### "+TempDownloadDirectory+filename+"????? "+group);
                             AESEncrypter Decrypter = new AESEncrypter((SecretKey)key1);
                             Decrypter.decrypt(new FileInputStream("D:/"+group+"/"+ filename),new FileOutputStream(TempDownloadDirectory+filename));
               
            String filepath1=TempDownloadDirectory+filename;   
            System.out.println(filepath1+"???????"+filename+"....."+TempDownloadDirectory);
            //System.out.println("********* "+fn);
            FileInputStream filetoDownload=new FileInputStream(filepath1);        
            ServletOutputStream output=response.getOutputStream();        
            response.setContentType("images/jpg");
            response.addHeader("Content-Disposition","attachment;filename="+filename);
            response.setContentLength(filetoDownload.available());
            int readBytes=0;                
            byte[] buffer=new byte[1024];              
            //while((readBytes=filetoDownload.read(buffer,0,100))!=-1)
            while(filetoDownload.available()>0)
            {
                output.write(filetoDownload.read()); 
                                
            
            }                  
            output.close();
            filetoDownload.close();              
        } catch (Exception ex) {
            request.setAttribute("message", "File Upload Failed due to " + ex);
            ex.printStackTrace();
           //request.setAttribute("message", "File Download Failed due to " + ex);
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
