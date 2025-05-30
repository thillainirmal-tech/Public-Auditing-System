/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.auditing;

import com.commondb.Common_DB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
/**
 *
 * @author sentamilpandi.m
 */
public class UserRegServlet extends HttpServlet {
    
    static Properties properties = new Properties();
   static
   {
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.socketFactory.port", "465");
      properties.put("mail.smtp.socketFactory.class",
                     "javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.port", "465");
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
            out.println("<title>Servlet UserReg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserReg at " + request.getContextPath() + "</h1>");
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
            ResultSet rs1=null;
        try
        {
            String reguser=request.getParameter("username");
            String regpass=request.getParameter("password");
            String reggender=request.getParameter("gender");
            String regdob=request.getParameter("dob");
            String regdob1=request.getParameter("dob1");
            String regdob2=request.getParameter("dob2");
            String regage=request.getParameter("age");
            String reggroup=request.getParameter("groupname");
            String regaddress=request.getParameter("address");
            String regstate=request.getParameter("state");
            String regnation=request.getParameter("nation");
            String regmobile=request.getParameter("mobile");
            String regemail=request.getParameter("email");
            
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/publicauditing","root","password");
          st=con.createStatement();
          int rs=st.executeUpdate("Insert into registration(username,password,dob,gender,age,groupname,email,mobile,city,state,nation) VALUES('"+reguser+"','"+regpass+"','"+regdob+","+regdob1+","+regdob2+"','"+reggender+"','"+regage+"','"+reggroup+"','"+regemail+"','"+regmobile+"','"+regaddress+"','"+regstate+"','"+regnation+"')");
          if(rs>0)
           {     
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/publicauditing","root","password");
          st=con.createStatement();
          rs1=st.executeQuery("select * from dataownerreg");
          if(rs1.next())
          {
             String key= rs1.getString(4);
          
                
               final String  from="javaredquene@gmail.com";
               final String password="mona1234";
               final String to="javaredquene@gmail.com";
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
         {
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
            }});
         
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(regemail));
         message.setSubject("public key:" + "Private key");
         //message.setSubject("private key");
         
         message.setText("public key is"+key );
         //message.setText("private key is "+"\n"+pri);
   
        Multipart multipart = new MimeMultipart();

      //addAttachments(multipart);
      //message.setContent(multipart);
      // Send message
      Transport.send(message);
    
     System.out.println("Email sent successfully");
             response.sendRedirect("Index.jsp");            
           }
            else
            {
             response.sendRedirect("regfail.jsp");
            }
                        
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
