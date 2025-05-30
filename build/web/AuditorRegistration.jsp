<%-- 
    Document   : AuditorRegistration
    Created on : Jul 1, 2014, 10:57:11 AM
    Author     : sentamilpandi.m
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css">
        <style>
            /*  Author : iMomen
    Website: www.iMomen.com
    E-mail : Coder@iMomen.com
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}

article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
  display: block;
}

body {
  line-height: 1;
}

ol, ul {
  list-style: none;
}

blockquote, q {
  quotes: none;
}

blockquote:before, blockquote:after,
q:before, q:after {
  content: '';
  content: none;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

/* Page */
body {
  background: #2F0916;
  font-family:"Trebuchet MS",tahoma;
}

a {
  color:#FF3679;
  text-decoration: none;
}
a:hover {
  text-decoration: underline;
}

.container {
  width: 475px;
  margin-left: auto;
  margin-right: auto;
}
.reg_section {
  padding:0;
  margin: 10px 0;
  border-bottom: 1px dotted #eee;
}
.reg_section h3 {
  font-size: 13px;
  margin: 5px 0;
  color: #C4A2A2;
}
/* Form */
.register {
  position: relative;
  margin-top:100px;
  padding: 20px 20px 20px;
  background: #fff;
  border-radius: 3px;
  -webkit-box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
  box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
}
.register:before {
  content: '';
  position: absolute;
  top: -8px;
  right: -8px;
  bottom: -8px;
  left: -8px;
  z-index: -1;
  background:rgba(255, 173, 200, 0.08);
  border-radius:7px;
  -webkit-border-radius: 7px;
}
.register h1 {
  margin: -20px -20px 0;
  line-height: 40px;
  font-size: 15px;
  font-weight: bold;
  color:#694551;
  text-align: center;
  border-bottom:1px solid #EDEDED;
  border-radius: 3px 3px 0 0;
  -webkit-box-shadow: 0 1px #f5f5f5;
  -moz-box-shadow: 0 1px #f5f5f5;
  box-shadow: 0 1px #f5f5f5;
}

.register input[type=text], .register input[type=password] ,.register select,.register textarea {
  width: 278px;
}
.register p.terms {
  float: left;
  line-height: 31px;
}
.register p.terms label {
  font-size: 12px;
  color: #777;
  cursor: pointer;
}
.register p.terms input {
  position: relative;
  bottom: 1px;
  margin-right: 4px;
  vertical-align: middle;
}
.register p.submit {
  text-align: right;
}

.register-help {
  margin: 20px 0;
  font-size: 11px;
  text-align: center;
 
  color:#FFFFFF;
}
.register-help a {
  color:#FF3679;
  text-shadow:0 1px #1E0E13;
}

:-moz-placeholder {
  color: #c9c9c9 !important;
  font-size: 13px;
}

::-webkit-input-placeholder {
  color: #ccc;
  font-size: 13px;
}

input {
  font-family:"Trebuchet MS",tahoma;
  font-size: 14px;
}

input[type=text], input[type=password] ,.register select,.register textarea {
  margin: 5px;
  padding: 0 10px;
  height: 34px;
  color: #404040;
  background: #fff;
  border-width: 1px;
  border-style: solid;
  border-color: #c4c4c4 #d1d1d1 #d4d4d4;
  border-radius:3px;
  -webkit-border-radius: 5px;
  outline:3px solid rgba(200, 105, 137, 0.09);
  -moz-outline-radius:7px;
  -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
  -moz-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
  margin:10px 0;
}
input[type=text]:focus, input[type=password]:focus{
  border-color:#FFF7F9;
  outline-color:rgba(254, 225, 235, 0.7);
  outline-offset: 0;
}

input[type=submit] {
  padding:0 10px;
  height: 29px;
  font-size: 12px;
  font-weight: bold;
  color:#FFFFFF;
  text-shadow:0 1px #4D1124;
  border-width: 1px;
  border-style: solid;
  border-color:#693647;
  border-radius: 7px 7px 7px 7px;
  outline: none;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  background-color: #7D0F33;
  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #AA1E4D), color-stop(100%, #7D0F33));
  background-image: -webkit-linear-gradient(top, #AA1E4D, #7D0F33);
  background-image:-moz-linear-gradient(center top , #AA1E4D, #7D0F33)
  background-image: -ms-linear-gradient(top, #AA1E4D, #7D0F33);
  background-image: -o-linear-gradient(top, #AA1E4D, #7D0F33);
  background-image: linear-gradient(top, #AA1E4D, #7D0F33);
  -webkit-box-shadow:0 1px #CD4170 inset, 0 1px 2px #93284C;
  -moz-box-shadow:0 1px #CD4170 inset, 0 1px 2px #93284C;
  box-shadow:0 1px #CD4170 inset, 0 1px 2px #93284C;
}
input[type=submit]:active {
  background: #7D0F33;
  -webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
}

.lt-ie9 input[type=text], .lt-ie9 input[type=password] {
  line-height: 34px;
}
.register select {
  padding:6px 10px;
  width: 300px;
  color: #777777;
}
.register textarea {
  height: 50px;
  padding: 10px;
  color: #C9C9C9;
}

/* About */
.about {
  margin:10px auto;
  width: 300px;
  text-align: center;
  color:#EEA5BD;
  font-size: 12px;
}
.about a {
  padding: 1px 3px;
  margin: 0 -1px;
  color: #fff;
  text-decoration: none;
  text-shadow: 0 -1px rgba(0, 0, 0, 0.2);
  border-radius: 2px;
}
.about a:hover {
  color:#2F0916;
  text-shadow: none;
  background: #E83671;
}

.links {
  zoom: 1;
}
.links:before, .links:after {
  content: "";
  display: table;
}
.links:after {
  clear: both;
}
.links a {
  padding: 6px 0;
  float: left;
  width: 50%;
  font-size: 14px;
}

        </style>
        <style>
            /* normalize.css - http://github.com/necolas/normalize.css */
/*
 * 1. Corrects font size not being inherited in all browsers
 * 2. Addresses margins set differently in IE6/7, FF3+, S5, Chrome
 * 3. Improves appearance and consistency in all browsers
 */

button,
input,
select,
textarea {
    font-size: 100%; /* 1 */
    margin: 0; /* 2 */
    vertical-align: baseline; /* 3 */
    vertical-align: middle; /* 3 */
}

/*
 * Addresses FF3/4 setting line-height on 'input' using !important in the UA stylesheet
 */

button,
input {
    line-height: normal; /* 1 */
}

/*
 * 1. Improves usability and consistency of cursor style between image-type 'input' and others
 * 2. Corrects inability to style clickable 'input' types in iOS
 * 3. Removes inner spacing in IE7 without affecting normal text inputs
 *    Known issue: inner spacing remains in IE6
 */

button,
input[type="button"],
input[type="reset"],
input[type="submit"] {
    cursor: pointer; /* 1 */
    -webkit-appearance: button; /* 2 */
    overflow: visible;  /* 3 */
}

/*
 * 1. Addresses box sizing set to content-box in IE8/9
 * 2. Removes excess padding in IE8/9
 * 3. Removes excess padding in IE7
      Known issue: excess padding remains in IE6
 */

input[type="checkbox"],
input[type="radio"] {
    box-sizing: border-box; /* 1 */
    padding: 0; /* 2 */
    height: 13px; /* 3 */
    width: 13px; /* 3 */
}

/*
 * Removes inner padding and border in FF3+
 * www.sitepen.com/blog/2008/05/14/the-devils-in-the-details-fixing-dojos-toolbar-buttons/
 */

button::-moz-focus-inner,
input::-moz-focus-inner {
    border: 0;
    padding: 0;
}
        </style>
    </head>
    <body>
        <div class="container">
    <section class="register">
        <center>
        <form name="form1" method="post" action="AuditorRegServlet">
            <br>
            <br>
            <table>
                <tr>
                    <td>
                        <div align="center"><font size="10" face="Colonna MT">Registration Form</font></div>
                    </td>
                </tr>
            </table>
            <br>
            <br>
            <table>
                <tr>
                    <td>
                        <div align="center"><h3>User ID:</h3></div>
                    </td>
                    <td>
                        <label for="userid"></label>
                        <input type="text" name="userid" id="userid">
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center"><h3>UserName:</h3></div>
                    </td>
                    <td>
                        <label for="username"></label>
                        <input type="text" name="username" id="username">
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center"><h3>Password:</h3></div>
                    </td>
                    <td>
                        <label for="password"></label>
                        <input type="password" name="password" id="password">
                    </td>
                </tr>
                <td>
                    <div align="center"><h3>Confirm Password:</h3></div>
                </td>
                <td>
                    <label for="conpassword"></label>
                    <input type="password" name="conpassword" id="conpassword">
                </td>
                <tr>
                    <td>
                        <div align="center"><h3>Email:</h3></div>
                    </td>
                    <td>
                        <label for="email"></label>
                        <input type="text" name="email" id="email">
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center"><h3>Mobile No:</h3></div>
                    </td>
                    <td>
                        <label for="mobileno"></label>
                        <input type="text" name="mobile" id="mobile">
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
        </center>
    </section>
        </div>
        <div align="center">
                        <a href="Index.jsp"><font size="5" face="Comic Sans Ms">Exit</font></a>
                    </div>
    </body>    
</html>
