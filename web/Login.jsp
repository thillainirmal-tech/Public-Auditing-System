<%-- 
    Document   : index
    Created on : Jun 27, 2014, 10:52:32 AM
    Author     : sentamilpandi.m
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="login-box.css" rel="stylesheet" type="text/css" />        
<style>              
#login-box {
	width:333px;
	height: 352px;
	padding: 58px 76px 0 76px;
	color: #ebebeb;
	font: 12px Arial, Helvetica, sans-serif;
	background: url(images/login-box-backg.png) no-repeat left top;
}

#login-box img {
	border:none;
}

#login-box h2 {
	padding:0;
	margin:0;
	color: #ebebeb;
	font: bold 44px "Calibri", Arial;
}


#login-box-name {
	float: left;
	display:inline;
	width:80px;
	text-align: right;
	padding: 14px 10px 0 0;
	margin:0 0 7px 0;
}

#login-box-field {
	float: left;
	display:inline;
	width:230px;
	margin:0;
	margin:0 0 7px 0;
}


.form-login  {
	width: 205px;
	padding: 10px 4px 6px 3px;
	border: 1px solid #0d2c52;
	background-color:#1e4f8a;
	font-size: 16px;
	color: #ebebeb;
}

.login-box-options  {
	clear:both;
	padding-left:87px;
	font-size: 11px;
}

.login-box-options a {
	color: #ebebeb;
	font-size: 11px;
}
body { 
	background: #2F0916; 
}
</style>
    </head>
    <body>        
        <div style="padding: 100px 0 0 250px;">
        <div id="login-box">
        <center>
        <form name="form1" method="post" action="LoginServlet">
            <br>
            </br>
            <table>
                <tr>
                    <td>
                        <div align="center"><font size="5" face="Andalus">Login Page</font></div>
                    </td>
                </tr>
            </table>
            <br>
            </br>
            <table>
                <tr>
                    <td>
                        <div align="center">UserName:</div>
                    </td>
                    <td>
                        <label for="username"></label>
                        <input type="text" name="username" id="username">
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center">Password:</div>
                    </td>
                    <td>
                        <label for="password"></label>
                        <input type="password" name="password" id="password">
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
            </div>
        </div>
        </form>
        </center>    
    </body>      
</html>
