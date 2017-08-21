
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
.style3 {font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
-->
</style>
<script language="javascript">
			var numericExpression = /^[0-9 + -]+$/;
			var alphaExp = /^[a-z A-Z .]+$/;
			var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
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
					alert("Invalid E-mail. Enter again! e.g: jhony@gmail.com");
					v.value=null;
                                        v.focus();
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
    <form method="post" action="forgot_servlet">
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
          <td rowspan="8"><img name="" src="galleryimages/image4_big.jpg" width="456" height="342" alt=""></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><strong>E-mail:</strong></td>
          <td><input type="text" name="textfield" id="textfield" onBlur="checkEmail()"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input name="button2" type="submit" class="blye-text-underline" id="button2" value="Click To Continue" onClick="checkEmail()" ></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>
            <label for="textfield3"></label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
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