<%-- 
    Document   : userrevocation
    Created on : Feb 24, 2014, 12:49:48 AM
    Author     : java
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="com.commondb.Common_DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="images/images18.jpg">   
        <center>
            <form name="form1" method="post" action="UserRevocationServlet">
         <br>
           </br>
           <table width="" border="0">
                <tr>
                    <td>
                        <div align="center">
                            <font size="10" face="Colonna MT">User Revocation Page</font></div>
                    </td>
                </tr>
            </table>
           <p>
           </p>
        </center>
         <br>               
                <%
                String Username=session.getAttribute("username").toString();
                %>
                <div align="left">
                <font size="4" face="Andalus">
               <h1>welcome, <%=Username%></h1></font>
               </div>
        <center>
        <table width="250" border="0">
            <tr>
                <td>
                    <div align="center"><font size="5" face="Comic Sans Ms">UserName List:</font></div>
                    <label for="username"></label>
                </td>
                <td>
                    <select name="username" >    
           <%  
           //String groupkey=session.getAttribute("groupkey").toString();
           ArrayList li=new ArrayList();
           Connection con=null;
           Statement st=null;
           ResultSet rs=null;
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/publicauditing","root","password");
           st=con.createStatement();
           String qry="select username from registration where groupname='"+Username+"'";
           rs=st.executeQuery(qry);
            //ResultSet rr=Common_DB.ViewParticularData("mona","login","groupname",group1);
          
         while(rs.next())            
         {
          String n=rs.getString(1);   
           
             li.add(n);             
         }
            if(!(li.isEmpty()))        
         for(int ij=0; ij<li.size(); ij++)                   
              {
           %>
           <option value="<%=li.get(ij)%>"> <%=li.get(ij)%></option>
           <%
               }
             
                else {               
          %>
            <option value=""> </option>
          <%                                                     
         }
%>
          
       </select> 
                </td>
            </tr>
        </table>
        <table width="250" border="0">
            <tr>
                <td>
                    <div align="center">
                    <input type="submit" name="submit" id="submit" value="Delete">
                    </div>
                </td>
            </tr>
        </table>
        </form>
        </center>
    </body>
</html>
