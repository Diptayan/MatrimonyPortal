<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%
String email="";
String msg=request.getParameter("msg");
 try{
      email=session.getAttribute("email").toString();
 }
 catch(Exception e)
 {
     response.sendRedirect("index.jsp?msg=Error!");
 }
if(msg!=null)
         {
     out.println("<script language='javascript'>");
    out.println("alert('Profile Updated Successfully!')");
    out.println("</script>");
 }
 else{}
%>

<%String pot=request.getParameter("hiddenField");
String name="", dd="", mm="", yyyy="", religion="", tongue="",gender="";

ResultSet rs1=null;


try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps1 = con.prepareStatement("SELECT * FROM reg1 WHERE email=?");
         ps1.setString(1, email);
         rs1 = ps1.executeQuery();
          if(rs1.next())
            {
             name= rs1.getString(3);
             gender=rs1.getString(4);
             dd=rs1.getString(5);
             mm=rs1.getString(6);
             yyyy=rs1.getString(7);
             religion=rs1.getString(8);
             tongue=rs1.getString(9);
             
             }
                 else{
                 }
         
         
         
    }
      catch(Exception ex){
        out.println(ex.toString());
    }
%>



<%
  String partner_religion="", partner_age1="", partner_age2="",partner_diet="",partner_edulevel="";
ResultSet rs3=null;
try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps3 = con.prepareStatement("SELECT * FROM partner_details WHERE email=?");
         ps3.setString(1, email);
         rs3 = ps3.executeQuery();
          if(rs3.next())
            {
              partner_religion=rs3.getString(6);
              partner_age1=rs3.getString(2);
              partner_age2=rs3.getString(3);
              partner_diet=rs3.getString(10);
              partner_edulevel=rs3.getString(9);
            
            }
                 else{
                 }
    }
      catch(Exception ex){
        out.println(ex.toString());
    }
  
%>
<%

ResultSet rs4=null;
try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps4 = con.prepareStatement("SELECT * FROM reg1 WHERE email not in(?) AND gender not in(?) AND (religion=?)");// and year between ? and ?");
         ps4.setString(1, email);
         ps4.setString(2, gender);
         ps4.setString(3, partner_religion);         

         rs4 = ps4.executeQuery();

         
    }
      catch(Exception ex){
        out.println(ex.toString());
    }

%>
<!DOCTYPE html>
<html>
<head>
<title>DreamTemplate.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {
	font-size: 14px;
	font-weight: bold;
}
.style4 {font-size: 12px}
.style7 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
.style8 {font-family: Verdana, Arial, Helvetica, sans-serif}
-->
</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
   
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="100" background="images/index_01.gif"><table width="100%" border="0" cellspacing="10" cellpadding="0">
              <tr>
                <td width="5%" height="39">&nbsp;</td>
                <td width="95%" valign="bottom"><a href="logout_servlet"><h3><strong>Log Out</strong></h3></a></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><img src="images/index_03.gif" width="387" height="245" alt=""></td>
          </tr>
        </table></t d>
        <td><img src="images/index_02.jpg" width="613" height="345" alt=""></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
       <td><a href="userprofile.jsp"><img src="images/index_04.gif" alt="" width="192" height="80" border="0"></a></td>
        <td><a href="search.jsp"><img src="images/index_05.gif" alt="" width="136" height="80" border="0"></a></td>
        <td><a href="gallery_logged.jsp"><img src="images/index_06.gif" alt="" width="130" height="80" border="0"></a></td>
        <td><a href="feedback_logged.jsp"><img src="images/index_07.gif" alt="" width="144" height="80" border="0"></a></td>
        <td><a href="help_logged.jsp"><img src="images/index_08.gif" alt="" width="133" height="80" border="0"></a></td>
        <td><a href="contactus_logged.jsp"><img src="images/index_09.gif" alt="" width="265" height="80" border="0"></a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/index_10.gif" width="1000" height="59" alt=""></td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#4C0805">&nbsp;</td>
  </tr>
  <tr>
    
  </tr>
  <tr>
    <td bgcolor="#3A0604"><table width="100%" border="0" cellspacing="10" cellpadding="0">
      <tr>
        <td width="100%" valign="top"><table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>          </tr>
        </table>
            
            <h2><strong>WELCOME <%=name%> </strong>,</h2>
            
            <p>
             
            </p>  
            <table width="100%" height="314" border="0" cellpadding="0" cellspacing="0">
             
              
              
              <tr> <%
String state="", city="", contact="",describe="";
ResultSet rs2=null;

        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps2 = con.prepareStatement("SELECT * FROM reg3 WHERE email=?");
         ps2.setString(1, email);
         rs2 = ps2.executeQuery();
          if(rs2.next())
            {
             state= rs2.getString(2);
             city=rs2.getString(3);
             contact=rs2.getString(4);
             describe=rs2.getString(10);
             String photo=rs2.getString(11);%>
             <td width="47%" rowspan="5"><img src="dp/<%=photo%>" width="264" height="217" border="4"></td>
             <td>&nbsp;</td>
             <%}
                 else{out.println("No more images. Thank you.");
                 }
    
%>
                
                <td height="38"><h2><span class="style3">Name:</span></h2></td>
                <td><%=name%></td>
                <td width="8%" colspan="2" rowspan="10">&nbsp;</td>
              </tr>
              <tr>
                <td width="8%">&nbsp;</td>
                <td width="15%" height="27"><span class="style3">DOB:</span></td>
                <td width="22%"><%=dd%>/<%=mm%>/<%=yyyy%></td>
              </tr>
              <tr>
                <td>&nbsp;</td>

                <td height="27"><span class="style3">Religion:</span></td>
                <td><%=religion%></td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
                <td height="27"><span class="style3">Mother Tongue: </span></td>
                <td><%=tongue%></td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
                <td height="27"><span class="style3">State:</span></td>
                <td><%=state%></td>
              </tr>
              <tr>
		        <td rowspan="5"><p><span class="style3">DESCRIPTION:</span>&nbsp;</p>
		             <textarea name="textfield" cols="60" rows="10" readonly bgcolor="brown"><%=describe%></textarea>                </td>
                <td>&nbsp;</td>
                <td height="27"><span class="style3">City:</span></td>
                <td><%=city%></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="27"><span class="style3">Contact Number: </span></td>
                <td><%=contact%></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="27"><span class="style3">Email Id: </span></td>
                <td><%=email%></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="27"><span class="style3">View Profile : </span></td>
                <td><a href="userprofview.jsp" class="style4">Click Here</a></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="27"><span class="style3">Update Profile : </span></td>
                <td><a href="updateuser.jsp" class="style4">Click Here</a></td>
              </tr>
            </table>
            <h2>&nbsp;</h2>
            <h2><strong>Few Relevant Matches For Your Profile: </strong></h2>
            <table width="100%" height="149" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="5%">&nbsp;</td>
                <td width="13%">&nbsp;</td>
                <td width="9%"><div align="center"><span class="style3">Email</span></div></td>
                <td width="12%"><div align="center"><span class="style3">Name</span></div></td>
                <td width="10%"><div align="center"><span class="style3">Gender</span></div></td>
                <td width="14%"><div align="center"><span class="style3">Date Of Birth </span></div></td>
                <td width="9%"><div align="center"><span class="style3">Religion</span></div></td>
                <td width="14%"><div align="center"><span class="style3">Mother Tongue</span></div></td>
                <td width="14%"><div align="center"><span class="style3">View Profile </span></div></td>
              </tr>
              <%
              int i=0;
            String search_email="",  search_name="",search_gender="",search_dd="",search_mm="",search_yyyy="";
            String search_religion="", search_tongue="",search_photo="";
            
             while(rs4.next()&& i<5)
            {
                 ResultSet rs5=null;
              search_email=rs4.getString(1);
          try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         Connection con2 = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
         PreparedStatement ps5 = con2.prepareStatement("SELECT photo FROM reg3 WHERE email in (?)");// and year between ? and ?");
         ps5.setString(1, search_email);
         rs5 = ps5.executeQuery();
       }
      catch(Exception ex){
        out.println(ex.toString());
    }

              rs5.next();
              search_name=rs4.getString(3);
              search_gender=rs4.getString(4);
              search_dd=rs4.getString(5);
              search_mm=rs4.getString(6);
              search_yyyy=rs4.getString(7);
              search_religion=rs4.getString(8);
              search_tongue=rs4.getString(9);
              
              search_photo=rs5.getString(1).trim();
              %>
              <tr>
                <td width="5%" rowspan="3">&nbsp;</td>
                <td width="13%" rowspan="2"><img src="dp/<%= search_photo%>" alt="" width="127" height="72" border="4"></td>
                <td height="45">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="45"><div align="center"><%=search_email%></div></td>
                <td><div align="center"><%=search_name%></div></td>
                <td><div align="center"><%=search_gender%></div></td>
                <td><div align="center"><%=search_dd%>/<%=search_mm%>/<%=search_yyyy%></div></td>
                <td><div align="center"><%= search_religion%></div></td>
                <td><div align="center"><%=search_tongue%></div></td>
                <td><div align="center"><a href="selected_prof.jsp?e=<%=search_email%>">Click to View</a></div></td>
              </tr>
              <tr>
                <td width="13%">&nbsp;</td>
                <td height="24">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              
              <%
                         i++;
                           }
              %>
            </table>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            </td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>