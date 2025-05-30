<%-- 
    Document   : Dataownerreg
    Created on : Jun 28, 2014, 4:05:42 PM
    Author     : sentamilpandi.m
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <style>            
body { 
	background: #2F0916; 
}
body, input, textarea { 
	font: 14px/24px Helvetica, Arial, sans-serif; 
	color: #666; 
}
input { 
	width: 60% 
}
form { 
	margin: 50px 0 0 0 
}
input, textarea { 
	background: none repeat scroll 0 0 #FFFFFF; 
	border: 1px solid #C9C9C9; 
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15) inset, -5px -5px 0 0 #F5F5F6, 5px 5px 0 0 #F5F5F6, 5px 0 0 0 #F5F5F6, 0 5px 0 0 #F5F5F6, 5px -5px 0 0 #F5F5F6, -5px 5px 0 0 #F5F5F6; 
	color: #545658; 
	padding: 8px; 
	font-size: 14px; 
	border-radius: 2px 2px 2px 2px; 
}
#submit { 
	background: url("../images/submit_bg.gif") repeat-x scroll 0 0 transparent; 
	border: 1px solid #B7D6DF; 
	border-radius: 2px 2px 2px 2px; 
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1); 
	color: #437182; 
	cursor: pointer; 
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; 
	font-size: 14px;
	font-weight: bold; 
	height: auto; 
	padding: 6px 10px ; 
	text-shadow: 0 1px 0 #FFFFFF; 
	width: auto; 
}
#submit:hover { 
	background: url("../images/submit_hover_bg.gif") repeat-x scroll 0 0 transparent; 
	border: 1px solid #9FBAC0; 
	cursor: pointer; 
}
a { 
	color: #88BBC8; 
	text-decoration: none; 
}
a:hover { 
	color: #f26525 
}
#signup-form { 
	width: 300px; 
	margin: 0 auto; 
	margin-top: 70px; 
	margin-bottom: 50px; 
	background: #fff; 
	padding: 40px; 
	border: 10px solid #f2f2f2; 
}
#signup-icon { 
	float: right; 
	width: 48px; 
	height: 48px; 
}
h1, h2, h3, h4, h5, h6 { 
	margin: 0; 
	padding: 0; 
	color: #444; 
}
h1 { 
	float: left; 
	margin: 0 0 30px; 
	font-size: 24px; 
	line-height: 34px; 
}
h2.secondary { 
	float: left; 
	width: 260px; 
	font-size: 16px; 
	font-weight: normal; 
	color: #999; 
	margin-bottom: 30px; 
	line-height: 26px; 
}
h3 { 
	margin: 30px 0 0 0 
}
.clearfix:after { 
	content: "."; 
	display: block; 
	height: 0; 
	clear: both; 
	visibility: hidden; 
}
.clearfix { 
	display: inline-block 
} /* Hide from IE Mac \*/
.clearfix { 
	display: block; 
} /* End hide from IE Mac */
.none { 
	display: none; 
} /* End Clearfix _NO__DOTCOMMA__AFTER__*/

#header { 
	margin: 0 0 30px 0; 
	border-bottom: 1px solid #efefef; 
}
#send p { 
	margin-bottom: 20px 
}
textarea { 
	width: 95%; 
	margin: 0 0 0 2px; 
}
#required p{
	font-size:10px;
}
#apply { 
	border-top: 1px solid #efefef; 
	margin-top: 30px; 
	padding: 20px 0 0 0; 
}
#apply ul { 
	margin-bottom: 50px 
}
form label { 
	display: block; 
	margin-bottom: 5px; 
	font-weight: bold; 
	font-size: 12px; 
}
        </style>
    </head>
    <body>        
    <div id="signup-form">               
        <div id="signup-inner">        
        	<div class="clearfix" id="header">        	
        		<img id="signup-icon" src="./images/signup.png" alt="" />

        <center>
            <form name="form1" method="post" action="DataOwnerRegServlet" id="send">                
                <table>
                    <tr>
                        <td>
                            <h1>Registration Form<br/></h1>
                        </td>
                    </tr>
                </table>
                </div>
               <p>Please Complete the Fields Below:-</p>

                <table>
                    <p>
                    <tr>
                        <td>
                            <div align="center">UserName:</div>
                        </td>
                        <td>
                            <label for="username"></label>
                            <input type="text" name="username" id="username">
                        </td>
                    </tr>
                </p>
                <p>
                    <tr>
                        <td>
                            <div align="center">Password:</div>
                        </td>
                        <td>
                            <label for="password"></label>
                            <input type="password" name="password" id="password">
                        </td>
                    </tr>
</p>
<p>
                    <tr>
                        <td>
                            <div align="center">ConfirmPassword:</div>
                        </td>
                        <td>
                            <label for="confirmpassword"></label>
                            <input type="password" name="conpassword" id="conpassword">
                        </td>
                    </tr>
</p>
<p>
                    <tr>
                        <td>
                            <div align="center">Email:</div>
                        </td>
                        <td>
                            <label for="email"></label>
                            <input type="text" name="email" id="email">
                        </td>
                    </tr>
</p>
<p>
                    <tr>
                        <td>
                            <div align="center">ProductKey:</div>
                        </td>
                        <td>
                            <label for="productkey"></label>
                            <input type="text" name="productkey" id="productkey">
                        </td>
                    </tr>
</p>
<p>
                    <tr>
                        <td>
                            <div align="center">Mobile:</div>
                        </td>
                        <td>
                            <label for="productkey"></label>
                            <input type="text" name="mobile" id="mobile">
                        </td>
                    </tr>
</p>
<p>
                    <tr>
                        <td>
                            <div align="center">City:</div>
                        </td>
                        <td>
                            <label for="productkey"></label>
                            <input type="text" name="city" id="city">
                        </td>
                    </tr>
</p>
                </table>
                <br>
                <p>
                <table>
                    <tr>
                        <td>
                            <div align="center">
                                <input type="submit" name="submit" id="submit" value="submit">
                            </div>
                        </td>
                    </tr>
                </table>
        </p>
            </form>
                </div>
    </div>
        <div align="center">
                        <a href="Index.jsp"><font size="5" face="Comic Sans Ms">Exit</font></a>
                    </div>
        </center>
    </body>
</html>
