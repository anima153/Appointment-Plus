<%--
    Document   : servletIndex
    Created on : Apr 28, 2008, 12:01:07 AM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Title      : Center Stage
Version    : 1.0
Released   : 20070710
Description: A two-column, fixed-width template suitable for small business websites.

-->
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
			<li><a href="#">About</a></li>
			<li><a href="#">Events</a></li>			
			<li><a href="#">Forums</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
</div>
<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Name Based Search</h2>
			<div class="content">             
                <fieldset><br>
                   <form align="center" method="post" action="namewiselist.jsp">
                        <center><table>
                            <tr><td colspan="2"><strong>Enter the name of the specialist.</strong></td></tr><tr></tr>
                            <tr><td>Full Name:</td><td><input id="searchinput" type="text" name="spname" value="" /></td></tr>
                            <tr></tr><tr><td></td><td>click for <a href="specialwiseApp.jsp">specialisation based search</a></td></tr>
                        </table> <br>
                        <input  type="submit" value="SEARCH" />
                        </center>
                        </form>                       
					</fieldset>				
			</div>
		</div>
</div>

</body>
</html>