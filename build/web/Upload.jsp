<%-- 
    Document   : Upload
    Created on : Jul 3, 2014, 11:33:35 AM
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>        
    </head>
    <body background="images/images28.jpg">
        <center>            
            <form name="form1" method="post" action="UploadServlet" enctype="multipart/form-data">
                <br>
                <br>
                <table>
                    <tr>
                        <td>
                            <div align="center"><font size="5" face="Comic Sans Ms">File Upload Page</font></div>
                        </td>
                    </tr>
                </table>
                <br>               
                <%
                String Username=session.getAttribute("username").toString();
                %>
                <div align="left">
                <font size="4" face="Andalus">
               <h1>welcome, <%=Username%></h1></font>
               </div>
                <table>
                    <tr>
                        <td>
                            <div align="center"><font size="5" face="Comic Sans Ms">Select a File:</font></div>
                        </td>
                        <td>
                            <label for="browse"></label>
                            <input type="file" name="filename" id="filename">
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <div align="center">
                                <input type="submit" name="submit" id="submit" value="submit">
                            </div>
                        </td>
                    </tr>
                    
                </table>
            </form>
               <br>
               <br>
               <br>
               <tr>
                    <div align="center">
                        <a href="Index.jsp"><font size="5" face="Comic Sans Ms">Exit</font></a>
                    </div>
                </tr>
        </center> 
               
    </body>
</html>
