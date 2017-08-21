<%
 String email="";
 try{
      email=session.getAttribute("email").toString();
 }
 catch(Exception e)
 {
     response.sendRedirect("index.jsp?msg=Error!");
         }
%>
<script language="javascript">
			
                        function givealert()
                        {
                            alert("You must login to search!");
                        }
                        </script>
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
    <td><table width="986" border="0">
      <tr>
        <td width="131" height="60">&nbsp;</td>
        <td colspan="2"><blockquote>
          <blockquote>
            <blockquote>
              <h1><strong>Contact Us-</strong></h1>
              </blockquote>
            </blockquote>
        </blockquote></td>
        <td width="135">&nbsp;</td>
        <td width="9">&nbsp;</td>
        <td width="46">&nbsp;</td>
      </tr>
      <tr>
        <td height="67"> <h3><strong>Name</strong></h3></td>
        <td width="436"><blockquote>
          <blockquote>
            <blockquote>
              <h3><strong>Institute/College</strong></h3>
            </blockquote>
          </blockquote>
        </blockquote></td>
        <td width="203"> <h3><strong>E-mail Address</strong></h3></td>
        <td><h3><strong>Contact Number</strong></h3></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="33"><h4><strong>Anwit Daityari</strong></h4></td>
        <td><h4><strong>B.P. Poddar Institute of Management and Technology (B.P.P.I.M.T)</strong></h4></td>
        <td><h4><strong>anwit.daityari@gmail.com</strong></h4></td>
        <td><h4><strong>9038353488</strong></h4></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="36"><h4><strong>Abhik Mitra</strong></h4></td>
        <td><h4><strong>Institute of Engineering and Management (I.E.M)</strong></h4></td>
        <td><h4><strong>abhik.mitra06@gmail.com</strong></h4></td>
        <td><h4><strong>8981832014</strong></h4></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="32"><h4><strong>Diptayan Basak</strong></h4></td>
        <td><h4><strong>B.P. Poddar Institute of Management and Technology (B.P.P.I.M.T)</strong></h4></td>
        <td><h4><strong>diptayanbasak@gmail.com</strong></h4></td>
        <td><h4><strong>9874959549</strong></h4></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="39"><h4><strong>Debanshu Saha</strong></h4></td>
        <td><h4><strong>Institute of Engineering and Management (I.E.M)</strong></h4></td>
        <td><h4><strong>debanshu.saha@gmail.com</strong></h4></td>
        <td><h4><strong>8981409005</strong></h4></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="34"><h4><strong>Mainak Mukhoty</strong></h4></td>
        <td><h4><strong>B.P. Poddar Institute of Management and Technology (B.P.P.I.M.T)</strong></h4></td>
        <td><h4><strong>mainak.mukhoty@gmail.com</strong></h4></td>
        <td><h4><strong>9903673096</strong></h4></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="34">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="34" colspan="2"><img src="galleryimages/image15_big.jpg" width="432" height="288" border="4"></td>
        <td colspan="4"><img src="galleryimages/image3_big.jpg" width="467" height="287" border="4"></td>
        </tr>
      <tr>
        <td height="34">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  
</table>
</body>
</html>