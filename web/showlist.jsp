
                                                                     
                                                                     
                                             
<%-- 
    Document   : showlist
    Created on : 6 Jul, 2012, 8:41:28 PM
    Author     : Diptayan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String email="";
 try{
      email=session.getAttribute("email").toString();
 }
 catch(Exception e)
 {
     response.sendRedirect("index.jsp");
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
.style7 {font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
.style8 {
	font-size: 14px;
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
}
.style9 {font-size: 14px}
.style10 {color: #FFFFFF}
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
     
               </td>
        </tr>
    </table></td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="131" background="images/index_50.gif"><table width="100%" border="0" cellspacing="10" cellpadding="0">
      <tr>
        <td width="51%" height="63" align="center" valign="bottom"><table width="977" border="0" align="left">
          <tr>
            <th height="43" scope="col"><u><span class="style9">Image</span></u></th>
            <th scope="col"><span class="style8"><u>Name</u></span></th>
            <th scope="col"><u><span class="style9">Religion</span></u></th>
            <th scope="col"><u><span class="style9">Mother Tongue</span> </u></th>
            <th scope="col"><u><span class="style9">Caste</span></u></th>
            <th scope="col"><u><span class="style9">State</span></u></th>
            <th scope="col"><u><span class="style9">View Profile</span> </u></th>
          </tr>
                 <%ResultSet rs4=null;
        String lookfor=request.getParameter("select").trim();
        String genderh="";
        if(lookfor.equals("Bride"))
        {
            genderh="Female";
        }
               else 
          {
              genderh="Male";
          }
               
        
        String religion=request.getParameter("select4");
        String mothertongue=request.getParameter("select5");
        String caste=request.getParameter("select6");
        String state=request.getParameter("select8");
        String workw=request.getParameter("select9");
        String workas=request.getParameter("select10");
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps1 = con.prepareStatement("SELECT * FROM search WHERE religion=(?) OR (tongue=?) OR caste=(?) OR state=(?) OR workw=(?) OR workas=(?)");
       // ps1.setString(1, genderh);
        ps1.setString(1, religion);
        ps1.setString(2, mothertongue);
        ps1.setString(3, caste);
        ps1.setString(4, state);
        ps1.setString(5, workw);
        ps1.setString(6, workas);
        //ps1.setString(8, email);
        
        
        rs4 = ps1.executeQuery();
        %>     
          <tr>
              <%String eml="",rl="",tn="",cs="",st="",nm="",gn="",phot="";
           ResultSet rs5=null;
		  while(rs4.next())
            {
			eml=rs4.getString(1).trim();
                       
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con5 = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
                PreparedStatement ps5 = con5.prepareStatement("SELECT photo FROM reg3 WHERE email=?");
                ps5.setString(1,eml);
                rs5=ps5.executeQuery();
                rs5.next();
        
                       phot=rs5.getString(1).trim();        
                       gn=rs4.getString(2).trim();
                        rl=rs4.getString(4).trim();
                        tn=rs4.getString(5).trim();
                        cs=rs4.getString(6).trim();
                        st=rs4.getString(7).trim();
			nm=rs4.getString(10).trim();
                        
                        if(gn.equals(genderh) && !(eml.equals(email)))
                                                       {
		  %>
            <td width="176" height="153"><img src="dp/<%=phot%>" alt="" width="174" height="141" border="4"></td>
            <td width="122">
              <div align="center"><%= nm%></div></td>
            <td width="113"><div align="center"><%= rl%>&nbsp;</div></td>
            <td width="177"><div align="center"><%= tn%>&nbsp;</div></td>
            <td width="150"><div align="center"><%= cs%>&nbsp;</div></td>
            <td width="106"><div align="center"><%= st%></div></td>
            <td width="103"><div align="center"><a href="selected_prof.jsp?e=<%=eml%>">Click to View</a>&nbsp;</div></td>
          </tr>
          <tr><%
                   }
                  }
          %>
            <td colspan="7">&nbsp;</td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>