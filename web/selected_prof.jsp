<%--
    Document   : selected_prof
    Created on : Jul 6, 2012, 8:32:42 AM
    Author     : Anwit
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

 <%
 String email="";
 try{
      email=session.getAttribute("email").toString();
 }
 catch(Exception e)
 {
     response.sendRedirect("index.jsp?msg=Error!");
         }
String search_email=request.getParameter("e");
String name="", dd="", mm="", yyyy="", religion="", tongue="",gender="";

ResultSet rs1=null;


try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps1 = con.prepareStatement("SELECT * FROM reg1 WHERE email=?");
         ps1.setString(1, search_email);
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
String marital="",height="", caste="", subcaste="";
String diet="", smoke="", drink="",value="",complexion="",bodytype="";
ResultSet rs2=null;
try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps2 = con.prepareStatement("SELECT * FROM reg2 WHERE email=?");
         ps2.setString(1, search_email);
         rs2 = ps2.executeQuery();
          if(rs2.next())
            {
             marital= rs2.getString(2);
             height=rs2.getString(3);
             caste=rs2.getString(4);
             subcaste=rs2.getString(5);
             diet=rs2.getString(6);
             smoke=rs2.getString(7);
             drink=rs2.getString(8);
             value=rs2.getString(9);
             complexion=rs2.getString(10);
             bodytype=rs2.getString(11);
            }
                 else{
                 }
    }
      catch(Exception ex){
        out.println(ex.toString());
    }
%>
<%
String state="", city="", contact="",edulevel="", edufield="",workwith="",workas="", search_photo="";
ResultSet rs3=null;
try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps3 = con.prepareStatement("SELECT * FROM reg3 WHERE email=?");
         ps3.setString(1, search_email);
         rs3 = ps3.executeQuery();
          if(rs3.next())
            {
             state= rs3.getString(2);
             city=rs3.getString(3);
             contact=rs3.getString(4);
             edulevel=rs3.getString(5);
             edufield=rs3.getString(6);
             workwith=rs3.getString(7);
             workas=rs3.getString(8);
             search_photo=rs3.getString(11);
            }
                 else{
                 }
    }
      catch(Exception ex){
        out.println(ex.toString());
    }
%>
<html>
<head>
<title>DreamTemplate.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {	font-size: 14px;
	font-weight: bold;
}
.style5 {font-size: 16px; font-weight: bold; }
.style7 {	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
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
        </table></td>
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
           
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="3" rowspan="9"><img name="" src="dp/<%=search_photo%>" width="294" height="192" alt="" border="4"></td>
              <td colspan="2">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2">&nbsp;</td>
   
              <td width="3%">&nbsp;</td>
            </tr>
            <tr>
              <td height="35" colspan="2"><span class="style5"><u>PERSONAL DETAILS:</u></span></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td width="22%" height="27"><p class="style3">Name:</p></td>
              <td width="41%"><%=name%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="27"><span class="style3">Gender:</span></td>
              <td><%=gender%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td width="3%">&nbsp;</td>
              <td width="3%">&nbsp;</td>
              <td width="28%" height="27">&nbsp;</td>
              <td><span class="style3">Date Of Birth: </span></td>
              <td><%=dd%>/<%=mm%>/<%=yyyy%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Height : </span></td>
              <td><%=height%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Religion:</span></td>
              <td><%=religion%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Mother Tongue : </span></td>
              <td><%=tongue%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Caste:</span></td>
              <td><%=caste%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Sub-caste:</span></td>
              <td><%=subcaste%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Marital Status : </span></td>
              <td><%=marital%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Complexion : </span></td>
              <td><%=complexion%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Body Type : </span></td>
              <td><%=bodytype%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Diet : </span></td>
              <td> <span class="style3"><%= diet%> &nbsp;&nbsp; Smoke: <%= smoke%> &nbsp;&nbsp; Drink: <%=drink%></span></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Personal Values : </span></td>
              <td><%=value%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">State : </span></td>
              <td><%=state%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">City : </span></td>
              <td><%=city%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Contact Number : </span></td>
              <td><%=contact%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="35">&nbsp;</td>
              <td colspan="2"><u class="style5">EDUCATIONAL &amp; PROFESSIONAL DETAILS:</u></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Education : </span></td>
              <td><%=edulevel%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Education Field : </span></td>
              <td><%=edufield%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Working With : </span></td>
              <td><%=workwith%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td height="27">&nbsp;</td>
              <td><span class="style3">Working As : </span></td>
              <td><%=workas%></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td><a href="updateuser.jsp"></a></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table>
          
          <p>&nbsp;</p>
          <p>&nbsp;</p></td>
        </tr>
    </table></td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="131" background="images/index_50.gif"><table width="100%" border="0" cellspacing="10" cellpadding="0">
      <tr>
        <td width="51%" height="63" align="center" valign="bottom">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
