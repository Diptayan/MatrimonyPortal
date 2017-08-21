<%-- 
    Document   : Partner
    Created on : Jul 4, 2012, 11:13:37 AM
    Author     : abhik
--%>


<script language="javascript">
			
                         var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
                        function givealert()
                        {
                            alert("You must login to search!");
                        }
                        function checkEmail()
			{
				var v = document.getElementById("textfield");
				if(v.value == "" || v.value == null)
				{
					alert("E-mail cannot be null. Enter again!");
					v.focus();
				}
				else if(!v.value.match(emailExp))
				{
					alert("Invalid E-mail. Enter again!");
					v.value=null;
                                        v.focus();
				}
				else{
                                    
                                }
			}
                       
                        </script>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    ResultSet rs = null;
    try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM feed");
        rs = ps.executeQuery();
        
    }catch(Exception ex){
        out.println(ex.toString());
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>DreamTemplate.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {	font-size: 18px;
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
                <td width="95%" valign="bottom"><a href="login.jsp"><h3><strong>Login</strong></h3></a></td>
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
        <td><a onClick="givealert()" href="#"><img src="images/index_05.gif" alt="" width="136" height="80" border="0"></a></td>
        <td><a href="gallery.jsp"><img src="images/index_06.gif" alt="" width="130" height="80" border="0"></a></td>
        <td><a href="feedback.jsp"><img src="images/index_07.gif" alt="" width="144" height="80" border="0"></a></td>
        <td><a href="help.jsp"><img src="images/index_08.gif" alt="" width="133" height="80" border="0"></a></td>
        <td><a href="contactus.jsp"><img src="images/index_09.gif" alt="" width="265" height="80" border="0"></a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>
   <form method="POST"	action="feed_servlet1">
    <table width="997" border="0">
      <tr>
        <td width="39">&nbsp;</td>
        <td width="93">&nbsp;</td>
        <td width="359">&nbsp;</td>
        <td width="41">&nbsp;</td>
        <td width="388">&nbsp;</td>
        <td width="51">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><h1><strong>Give your Feedback-</strong></h1></td>
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
       
        <td height="31">&nbsp;</td>
        <td><h3><strong>E-mail:</strong></h3></td>
        <td><input type="text" name="textfield" id="textfield" onBlur ="checkEmail()"></td>
        <td>&nbsp;</td>
        <td rowspan="3"><img src="galleryimages/image13_big.jpg" width="388" height="256" border="4"></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="33">&nbsp;</td>
        <td><h3><strong>Name:</strong></h3></td>
        <td><input type="text" name="textfield2" id="textfield2"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="159">&nbsp;</td>
        <td><h3><strong>Comments:</strong></h3></td>
        <td><textarea name="textarea" id="textarea" cols="55" rows="8"></textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="48">&nbsp;</td>
        <td>&nbsp;</td>
        <td><input type="submit" name="button" id="button" value="Submit"></td>
           
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
 </form>
    </td>
  </tr>
</table>
<p>&nbsp;</p>

<table width="100%" border="0">
    <tr>
        <td width="8%">&nbsp;</td>
        <td width="28%" class="style1"><div align="center"><h2><u>E-mail</u></h2></div></td>
        <td width="19%" class="style1"><div align="center"><h2><u>Name</u></h2></div></td>
        <td width="40%" class="style1"><div align="center"><h2><u>Previous Comments</u></h2></div></td>
    </tr>
 <%
                            String email = "", name="", comm="";
                            while(rs.next())
				{
				email = rs.getString(1);
                                name= rs.getString(2);
                                comm= rs.getString(3).trim();
                             
              %>
  <tr>
    <td width="8%" height="105">&nbsp;</td>
    <td width="29%"><div align="center"><h2><%=email%></h2></div></td>
    <td width="20%"><div align="center"><h2><%=name%></h2></div></td>
    <td width="43%">
     
      <div align="center">
        <textarea name="textfield3" cols="30" rows="2" readonly><%=comm%></textarea>
          
        </div>
    <h2 align="left">&nbsp;</h2></td>
  </tr>
  <tr>
    
  </tr>
  <%
				}
		
			  %>
</table>
<p>&nbsp;</p>
</body>
</html>