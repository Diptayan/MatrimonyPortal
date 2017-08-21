
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<title>DreamTemplate.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-family: "Times New Roman", Times, serif;
	color: #FFFFFF;
}
.style2 {
	color: #FFFFFF;
	font-size: 14px;
}
-->
</style>
<%
String email=session.getAttribute("email").toString();
//String pot=request.getParameter("hiddenField");
 String secq="",password="",answer="";

ResultSet rs1=null;


try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps1 = con.prepareStatement("SELECT secq,password,answer FROM reg1 WHERE email=?");
         ps1.setString(1, email);
         rs1 = ps1.executeQuery();
          if(rs1.next())
            {
              secq= rs1.getString(1);
              password= rs1.getString(2);
              answer= rs1.getString(3);
             
             }
                 else{
                 }
         
         
         
    }
      catch(Exception ex){
        out.println(ex.toString());
    }
%>


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
                <td width="95%" valign="bottom">&nbsp;</td>
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
       <td><a href="index.jsp"><img src="images/index_04.gif" alt="" width="192" height="80" border="0"></a></td>
        <td><a href="search.jsp"><img src="images/index_05.gif" alt="" width="136" height="80" border="0"></a></td>
        <td><a href="gallery.jsp"><img src="images/index_06.gif" alt="" width="130" height="80" border="0"></a></td>
        <td><a href="feedback.jsp"><img src="images/index_07.gif" alt="" width="144" height="80" border="0"></a></td>
        <td><a href="help.jsp"><img src="images/index_08.gif" alt="" width="133" height="80" border="0"></a></td>
        <td><a href="contactus.jsp"><img src="images/index_09.gif" alt="" width="265" height="80" border="0"></a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><p>&nbsp;</p>
    <form method="post" action="forgot1_servlet">
      <table width="998" border="0">
        <tr>
          <td width="422">&nbsp;</td>
          <td width="173">&nbsp;</td>
          <td width="389">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="3"><blockquote>
            <blockquote>
              <blockquote>
                <blockquote>
                  <blockquote>
                    <blockquote>
                      <blockquote>
                        <blockquote>
                          <h2>Retrieve Your Password-</h2>
                        </blockquote>
                      </blockquote>
                    </blockquote>
                  </blockquote>
                </blockquote>
              </blockquote>
            </blockquote>
          </blockquote></td>
        </tr>
        <tr>
          <td rowspan="7"><img name="" src="galleryimages/image4_big.jpg" width="456" height="342" alt=""></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><strong>E-mail:</strong></td>
          <td><input type="text" name="textfield" id="textfield" readonly value="<%=email%>"></td>
        </tr>
        <tr>
          <td><strong>Security Question:</strong></td>
          <td><input type="text" name="textfield3" id="textfield3" readonly value="<%=secq%>"></td>
        </tr>
        <tr>
          <td><strong>Answer:</strong></td>
          <td><input type="text" name="textfield2" id="textfield2" readonly value="<%=answer%>"></td>
        </tr>
        <tr>
          <td><strong>Your Password:</strong></td>
          <td><label for="textfield4"></label>
            <input type="text" name="textfield4" id="textfield4" readonly value="<%=password%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><a href="login.jsp">Login Now</a></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="3">_____________________________________________________________________________________________________________________________________________________________________</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
      </form>
      <p>&nbsp;</p>
    <p>&nbsp;</p></td>
  </tr>
</table>

<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  
</table>
</body>
</html>