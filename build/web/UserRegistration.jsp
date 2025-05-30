<%-- 
    Document   : UserRegistration
    Created on : Jun 27, 2014, 11:03:32 AM
    Author     : sentamilpandi.m
--%>
<%@page import="java.sql.*"%>
<%@page import="com.commondb.Common_DB"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <title>JSP Page</title>  
        <style type="text/css"> 
            
h3{font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:SlateBlue;
text-align: center; text-decoration: underline }
table{font-family: Calibri; color:white; font-size: 11pt; font-style: normal;
text-align:; background-color: SlateBlue; border-collapse: collapse; border: 2px solid navy}
table.inner{border: 0px}body { 
	background: #2F0916; 
}
      </style>
    </head>    
    <body>        
        <center>
            <form name="form1" method="post" action="UserRegServlet">
                <br>
                </br>
                <table>
                    <tr>
                        <td>
                            <div align="center">
                                <font size="10" face="Colonna MT">User Registration Form</font>
                            </div>
                        </td>
                    </tr>
                </table>
                <br>
                </br>
                    
<table align="center" cellpadding = "10"> 
    
<!----- First Name ---------------------------------------------------------->
<tr>
<td>
<div align="center">USERNAME</div>
</td>
<td>
<label for="username"></label>
<input type="text" name="username" id="username" maxlength="30">
(Max 30 Characters a-z And A-Z)
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>
<div align="center">PASSWORD</div>
</td>
<td>
<label for="username"></label>
<input type="password" name="password" id="password" maxlength="30">
(Max 30 Characters a-z And A-Z)
</td>
</tr>
 
<!----- Date Of Birth -------------------------------------------------------->
<tr>
    <td><div align="center">DATE OF BIRTH</div></td>
 
<td>
<select name="dob" id="dob">
<option value="-1">Day:</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
 
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
 
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
 
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
 
<option value="31">31</option>
</select>
 
<select id="dob1" name="dob1">
<option value="-1">Month:</option>
<option value="January">Jan</option>
<option value="February">Feb</option>
<option value="March">Mar</option>
<option value="April">Apr</option>
<option value="May">May</option>
<option value="June">Jun</option>
<option value="July">Jul</option>
<option value="August">Aug</option>
<option value="September">Sep</option>
<option value="October">Oct</option>
<option value="November">Nov</option>
<option value="December">Dec</option>
</select>
 
<select name="dob2" id="dob2">
 
<option value="-1">Year:</option>
<option value="2012">2014</option>
<option value="2011">2013</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
<option value="2010">2010</option>
<option value="2009">2009</option>
<option value="2008">2008</option>
<option value="2007">2007</option>
<option value="2006">2006</option>
<option value="2005">2005</option>
<option value="2004">2004</option>
<option value="2003">2003</option>
<option value="2002">2002</option>
<option value="2001">2001</option>
<option value="2000">2000</option>
 
<option value="1999">1999</option>
<option value="1998">1998</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option>
<option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>
 
<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
</select>
</td>
</tr>
 <!-----------------Gender-------------------------------------------------->
 <tr>
                        <td>
                            <div align="center">GENDER</div>
                        </td>
                        <td>
                            <label for="gender"></label>
                            <select name="gender">
                                <option value="">--Select---</option>
                              <%  
                               ArrayList li=new ArrayList();
                               ResultSet rr=Common_DB.ViewTable("publicauditing","gender");          
                               while(rr.next())            
                                {
                                  String n=rr.getString(1);              
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
<!-------------------AGE--------------------------------------------------->
<tr>
<td>
<div align="center">AGE</div>
<td>
<label for="age"></label>
<input type="text" name="age" id="age">
</td>
</tr>
<!-------------------GROUPNAME------------------------------------------------------->
 <tr>
                        <td>
                            <div align="center">GROUPNAME</div>
                        </td>
                        <td>
                            <label for="groupname"></label>
                            <select name="groupname"> 
                                <option value="">--Select---</option>
                                <%                                  
                               ArrayList list=new ArrayList();
                               ResultSet rs=Common_DB.ViewTable("publicauditing","dataownerreg");          
                               while(rs.next())            
                                {
                                  String n=rs.getString(1);              
                                  list.add(n);             
                                }
                               if(!(list.isEmpty()))        
                               for(int ij=0; ij<list.size(); ij++)                   
                                {
                                %>
                               <option value="<%=list.get(ij)%>"> <%=list.get(ij)%></option>
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
                    
<!----- Email Id ---------------------------------------------------------->
 <tr>
<td>
<div align="center">EMAIL ID</div>
</td>
<td>
<label for="email"></label>
<input type="text" name="email" id="email">
</td>
</tr> 
 
<!----- Mobile Number ---------------------------------------------------------->
<td>
<div align="center">MOBILE</div>
</td>
<td>
<label for="mobile"></label>
<input type="text" name="mobile" id="mobile" maxlength="10"/>
(10 Digit Number)
</td>
</tr>
<!----- City ---------------------------------------------------------->
<tr>
<td align="center">CITY</div></td>
<td>
<label for="address"></label>    
<input type="text" name="address" id="address" maxlength="30" />
(Max 30 Characters a-z And A-Z)
</td>
</tr>
 <tr>                       
<!----- Pin Code ---------------------------------------------------------->
<tr>
    <td><div align="center">PIN CODE</div></td>
<td><input type="text" name="Pin_Code" maxlength="6" />
(6 Digit Number)
</td>
</tr>
 
<!----- State ---------------------------------------------------------->
<tr>
    <td><div align="center">STATE</div></td>
<td>
    <label for="state"></label>
    <input type="text" name="state" id="state" maxlength="30" />
(Max 30 Characters a-z And A-Z)
</td>
</tr>
 
<!----- Country ---------------------------------------------------------->
<tr>
<td>
<div align="center">NATIONALITY</div>
</td>
<td>
<label for="nation"></label>
<input type="text" name="nation" id="nation">
</td>
</tr>
<center>
    <table>
<tr>
<td>
<div align="center">
<input type="submit" name="submit" id="submit" value="submit">
</div>
</td>
</tr>
</center>
   </table>
</table>           
            </form>
                            <div align="center">
                        <a href="Index.jsp"><font size="5" face="Comic Sans Ms">Exit</font></a>
                    </div>
        </center>                            
    </body>       
</html>
