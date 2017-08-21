
<%

String msg=request.getParameter("msg");
if(msg!=null)
       {
    out.println("<script language='javascript'>");
    out.println("alert('Wrong User Id OR Password')");
    out.println("</script>");
}
else{
}
%>
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
<script language="javascript">

			var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
                        function givealert()
                        {
                            alert("You must login to search!");
                        }
			function checkSubmit()
			{
				var v = document.getElementById("textfield");
				var v2 = document.getElementById("textfield2");
				if(v.value == "" || v.value == null || v2.value == "" || v2.value == null)
				{
					alert("E-mail or Password cannot be null. Enter again!");
					return false;
					v.focus();
				}
				else if(!v.value.match(emailExp))
				{
					alert("Invalid E-mail. Enter again!");
					v.value=null;
					return false;
                    v.focus();
				}
				else
				{
					return true;
				}
			}

</script>

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
        <td><a onClick="givealert()" href="#"><img src="images/index_05.gif" alt="" width="136" height="80" border="0"></a></td>
        <td><a href="gallery.jsp"><img src="images/index_06.gif" alt="" width="130" height="80" border="0"></a></td>
        <td><a href="feedback.jsp"><img src="images/index_07.gif" alt="" width="144" height="80" border="0"></a></td>
        <td><a href="help.jsp"><img src="images/index_08.gif" alt="" width="133" height="80" border="0"></a></td>
        <td><a href="contactus.jsp"><img src="images/index_09.gif" alt="" width="265" height="80" border="0"></a></td>
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
          <div align="center">
            <table width="662" border="3" cellspacing="0" cellpadding="0">
              <tr>
                <td width="654">
				<form method="post" action="login_servlet" onSubmit="return checkSubmit()">
				<table width="100%" height="301" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td colspan="4"><div align="center" class="style1">
                      <h1>Log In- </h1>
                    </div></td>
                    </tr>
                  <tr>
                    <td width="53%" rowspan="7"><img name="" src="images/hindu-wedding-photography-1-600x429.jpg" width="333" height="260" alt=""></td>
                    <td width="20%"><span class="style2">Email:</span></td>
                    <td width="21%">
                      <input type="text" name="textfield" id="textfield">
                    <td width="6%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="style2">Password:</td>
                    <td><input type="password" name="textfield2" id="textfield2"></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">
                      <input type="submit" name="Submit" value="Log In">                    </td>
                    </tr>
                  <tr>
                    <td class="style2">NEW USER? </td>
                    <td><a href="index.jsp">REGISTER</a></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="style2">Forgot Password?</td>
                    <td><a href="forgot.jsp">CLICK HERE </a></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="19" colspan="3" class="style2" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="style2">&nbsp;</td>
                    <td> <a href="#"></a></td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
				</form>
				</td>
				
              </tr>
            </table>
			
          </div>
          </td>
        </tr>
		
    </table></td>
  </tr>
  
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  
</table>
</body>
</html>