<%--
    Document   : insertUserprofile
    Created on : Oct 21, 2009, 8:59:23 PM
    Author     : PPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
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
		<h2><a href="">Your Everyday Alarm Clock</a></h2>
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
        <%!
        Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int has,empID,orgID,custID,appnum,mySp1,mySp2;
         String appdate="",slot,sql="",name,sex,dob,add,tel,msg,date,sender,receiver;
         String strMonth,strDate,strYear,datetoparse;
         char DateSeparator='-';
        %>

        <%

      try{
        empID=Integer.parseInt(session.getAttribute("empID").toString());
        orgID=Integer.parseInt(session.getAttribute("ID").toString());
        appdate=session.getAttribute("appdate").toString();
        slot=session.getAttribute("slot").toString();

        //TO REVERSE DATE
        datetoparse=appdate;
		mySp1=datetoparse.indexOf(DateSeparator,0);
		mySp2=datetoparse.indexOf(DateSeparator,(mySp1+1));
        strMonth=datetoparse.substring(mySp1+1,mySp2);
		strDate=datetoparse.substring(0,mySp1);
		strYear=datetoparse.substring(mySp2+1,mySp2+5);
        appdate=strYear+"-"+strMonth+"-"+strDate;
        //REVERSE DATE ENDS HERE

       name=request.getParameter("username");
        sex=request.getParameter("usersex");
        dob=request.getParameter("userDOB");
        add=request.getParameter("userpadd");
       tel=request.getParameter("usertel");
       //TO REVERSE DATE
        datetoparse=dob;
		mySp1=datetoparse.indexOf(DateSeparator,0);
		mySp2=datetoparse.indexOf(DateSeparator,(mySp1+1));
        strMonth=datetoparse.substring(mySp1+1,mySp2);
		strDate=datetoparse.substring(0,mySp1);
		strYear=datetoparse.substring(mySp2+1,mySp2+5);
        dob=strYear+"-"+strMonth+"-"+strDate;
        //REVERSE DATE ENDS HERE
      

      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      sql="insert into custinfo(cname,cDOB,cpadd,csex,cCon) values('"+name+"','"+dob+"','"+add+"','"+sex+"','"+tel+"') ";
      has=st.executeUpdate(sql);

      st=con.createStatement();
      res=st.executeQuery("select sno from custinfo");
      while(res.next())
          custID=res.getInt(1);    

          has=st.executeUpdate("INSERT INTO slot(orgID,empID,custID,appdate,slot) VALUES("+orgID+","+empID+","+custID+",'"+appdate+"','"+slot+"')");
      if(has==0)
         sql="Unable to process the request for appointment.Please fill the details correctly and try again.";
      else
          {
          res=st.executeQuery("select sno from slot");
          while(res.next())
          appnum=res.getInt(1);

          sql="Your appointment has been fixed.Current customers appointment number is <strong>"+custID+"</strong>.";
          msg="The appointment has been fixed for date "+appdate+" at time slot "+slot+" with "+name+" .";
          date=(new Date()).toString();
          rs=st.executeQuery("select oEmail from org where orgID="+orgID+"");
          while(rs.next())
              sender=rs.getString(1);
          rs=st.executeQuery("select eEmail from staffentry where sno="+empID+" ");
          while(rs.next())
              receiver=rs.getString(1);
          has=st.executeUpdate("insert into inbox(msg,sender,receiver,sent_time,appnum) values('"+msg+"','"+sender+"','"+receiver+"','"+date+"','"+appnum+"')");
         }
 }
     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

      %>

      <div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Appointment Status</h2>
			<div class="content">
                <form id="searchform" method="get" action="organisation.jsp">
					<fieldset>
                        <p><jsp:expression>sql</jsp:expression></p><br>
                        <center>
                        <input type="submit" value="   OK   " />
                        </center>
					</fieldset>
				</form>
			</div>
		</div>
</div>
</body>
</html>