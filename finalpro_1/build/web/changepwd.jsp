<%--
    Document   : try2
    Created on : Apr 27, 2008, 12:03:28 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Appointment+.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
    <body>        
        <div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a href="">Manage your appointments</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="index.jsp">Home</a></li>
			<li class="active"><a href="about.jsp" target="top">About</a></li>
			<li class="active"><a href="events.jsp" target="top">Events</a></li>
			<li class="active"><a href="contacts.jsp" target="top">Contact</a></li>
		</ul>
	</div>
</div>
<div style="width: 600px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="profile">
            User Profile</h2>
			<div class="content">
            <form name="changepwd" id="searchform" action="servlet_changepwd.jsp"  method="post">
            <fieldset>
             <table align="center">
                 <tr><td>Usertype:</td>
                 <td><select name="usertype" id="searchselect">
                             <option>User</option>
                             <option>Organisation</option>
                 </select></td></tr>
              <tr><td>Old Password:</td><td><input id="searchinput" type="text" name="oldpwd" /></td></tr>
              <tr><td>New Password:</td><td><input id="searchinput" type="text" name="newpwd" value="" /></td></tr>
              <tr><td>Retype New Password:</td><td><input id="searchinput" type="text" name="newpwd2" value="" /></td></tr>
           </table>
           </fieldset>
             <br>
               <center>
                   <table>
                    <tr><td><form action="servlet_changepwd.jsp"><input type="submit" value="CHANGE" /></form></td>
                    <td><form action="index.jsp"><input type="submit" value="CANCEL" /></form></td></tr>
                   </table>
              </center>
             </form>
        </div>
		</div>
</div>
    </body>
</html>
