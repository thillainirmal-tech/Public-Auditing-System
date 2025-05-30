<%-- 
    Document   : audithere
    Created on : Feb 2, 2015, 3:18:20 PM
    Author     : JAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="images/images24.jpg">
        
        <center>            
            <form  method="post" action="audserv" enctype="multipart/form-data">
                <br>
                <br>
                <table>
                    <tr>
                        <td>
                            <div align="center"><font size="5" face="Imprint MT Shadow">File Upload Page</font></div>
                        </td>
                    </tr>
                </table>
                <br>               
                
                <div align="left">
                <font size="4" face="Andalus">
               </div>
                <br>
                <br>
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
             <tr>
                    <div align="center">
                        <a href="Index.jsp"><font size="5" face="Comic Sans Ms">Go to Home Page</font></a>
                    </div>
                </tr>
        </center> 
    </body>
</html>
