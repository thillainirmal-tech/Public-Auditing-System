/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.auditing;

import com.commondb.Common_DB;
import java.io.*;
import java.security.Key;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.SecretKey;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Rajesh
 */
public class audserv extends HttpServlet {

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
    
    
     String password = "java@987";
    String from = "datamaincent@gmail.com";
    static Properties properties = new Properties();

    static {
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "465");
    }
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
            out.println("<title>Servlet audserv</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet audserv at " + request.getContextPath() + "</h1>");
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
       String name = null;
String mailid="";
 String user;
        HttpSession session1 = request.getSession(true);
        //String Auditor="";
        String productkey = session1.getAttribute("productkey").toString();
        String group = session1.getAttribute("group").toString();
//        System.out.println("FFFFFFFFFF" + productkey);
//        final String UPLOAD_DIRECTORY = "D:/" + group;
//
        
        Session session123 = Session.getInstance(properties, new javax.mail.Authenticator() {

                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, password);
                }
            });
        
        
        String TempUploadDirectory = "D:/temp10";
        System.out.println("AAAAAAAAAAAAAAAAAAAAA" + TempUploadDirectory);
        File file = new File(TempUploadDirectory);
//        if (!(file.exists())) {
//            file.mkdir();
//        }

        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                String nn = "";
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);

                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        name = new File(item.getName()).getName();
                        item.write(new File(TempUploadDirectory + File.separator + name));
                        nn = name;
                    }
                }



              String hashvalue=  mdhashing.shaa(TempUploadDirectory + File.separator + nn);
                System.out.println("**********"+hashvalue);
               ResultSet rs=   Common_DB.ViewParticularData("publicauditing", "ownerprofile", "filename", nn);

               while(rs.next())
{
    
     user=rs.getString("username");
    String aa=rs.getString(3);
    if(aa.equals(hashvalue))
    {
        response.sendRedirect("integrity.jsp");
        
        System.out.println("The File is not corrupted...");
    }else
    {
        System.out.println("inside else");
        ResultSet rss=   Common_DB.ViewParticularData("publicauditing", "dataownerreg", "username", user);
        if(rss.next())
        {
            
            mailid=rss.getString("email");
            System.out.println(mailid);
        
        
        Message message = new MimeMessage(session123);
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(mailid));
            message.setSubject("**Important Message From Auditor**");
            message.setText("Your Data in Server is Corrupted or Modified");
            Transport.send(message);

            System.out.println("email sent successfully");
            response.sendRedirect("Audithere.jsp");
        }
    }
}
                //File Checked successfully
                request.setAttribute("message", "File Checked Successfully");
            } catch (Exception ex) {
                request.setAttribute("message", "File Checking Failed due to " + ex);
            }
    
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
