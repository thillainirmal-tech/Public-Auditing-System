<%-- 
    Document   : Download
    Created on : Jul 17, 2014, 3:42:30 PM
    Author     : sentamilpandi.m
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="images/images18.jpg">
        <center>
            <form name="form1" method="post" action="DownloadServlet">
                <br>
                <br>
                <br>                
                <table>
                    <tr>
                        <td>
                            <div align="center"><font size="5" face="Comic Sans Ms">File Download Page</font></div>
                        </td>
                    </tr>
                </table>
                <br>
                <br>
                <table>
                    <tr>
                        <td>
                            <div align="center"><font size="5" face="Comic Sans Ms">Select a File:</font></div>
                        </td>
                        <td>
                            <label for="selctfile"></label>
                           <select name="filename">
                                <%  		
           String group=session.getAttribute("group").toString();                                                                                  
          ArrayList filename=(ArrayList)session.getAttribute("filename");                        
          for(int i=0;i<filename.size();i++) {			 
%>
              <option> <%=filename.get(i)%> </option>
              <% }
       
%>
                           </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center"><font size="5" face="Comic Sans Ms">Secret Key:</font></div>
                        </td>
                        <td>
                            <label for="key"></label>
                            <input type="password" name="productkeys" id="productkeys">
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
                               
                                <tr>                    
                </tr>
                           </table>
            </form>
                           <br>
                           <br>
                           <div align="center">
                        <a href="Index.jsp"><font size="5" face="Comic Sans Ms">Go to Home Page</font></a>
                    </div>
        </center>
    </body>
</html>
