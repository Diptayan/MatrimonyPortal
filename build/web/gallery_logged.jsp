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
<title>Image slideshow</title>
	<link rel="stylesheet" href="gallerycss/image-slideshow.css" type="text/css">
	<script type="text/javascript" src="js/image-slideshow.js">
   	/***********************************************************************************************
	
	Copyright (c) 2005 - Alf Magne Kalleland post@dhtmlgoodies.com
	
	UPDATE LOG:
	
	March, 10th, 2006 : Added support for a message while large image is loading
	
	Get this and other scripts at www.dhtmlgoodies.com
	
	You can use this script freely as long as this copyright message is kept intact.
	
	***********************************************************************************************/ 
 
	
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
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
          <center><div id="dhtmlgoodies_slideshow">
	<div id="previewPane">
		<img src="galleryimages/image1_big.jpg">
		<span id="waitMessage">Loading image. Please wait</span>	
		<div id="largeImageCaption">Marriage Photograph 1</div>
	</div>
	<div id="galleryContainer">
		<div id="arrow_left"><img src="galleryimages/arrow_left.gif"></div>
		<div id="arrow_right"><img src="galleryimages/arrow_right.gif"></div>
		<div id="theImages">
				<!-- Thumbnails -->
				<a href="#" onClick="showPreview('galleryimages/image1_big.jpg','1');return false"><img src="galleryimages/image1.jpg"></a>		
				<a href="#" onClick="showPreview('galleryimages/image2_big.jpg','2');return false"><img src="galleryimages/image2.jpg"></a>		
				<a href="#" onClick="showPreview('galleryimages/image3_big.jpg','3');return false"><img src="galleryimages/image3.jpg"></a>		
				<a href="#" onClick="showPreview('galleryimages/image4_big.jpg','4');return false"><img src="galleryimages/image4.jpg"></a>		
				<a href="#" onClick="showPreview('galleryimages/image5_big.jpg','5');return false"><img src="galleryimages/image5.jpg"></a>		
				<a href="#" onClick="showPreview('galleryimages/image6_big.jpg','6');return false"><img src="galleryimages/image6.jpg"></a>		
				<a href="#" onClick="showPreview('galleryimages/image7_big.jpg','7');return false"><img src="galleryimages/image7.jpg"></a>		
				<a href="#" onClick="showPreview('galleryimages/image8_big.jpg','8');return false"><img src="galleryimages/image8.jpg"></a>
				<a href="#" onClick="showPreview('galleryimages/image9_big.jpg','9');return false"><img src="galleryimages/image9.jpg"></a>	
				<a href="#" onClick="showPreview('galleryimages/image10_big.jpg','10');return false"><img src="galleryimages/image10.jpg"></a>
				<a href="#" onClick="showPreview('galleryimages/image11_big.jpg','11');return false"><img src="galleryimages/image11.jpg"></a>
				<a href="#" onClick="showPreview('galleryimages/image12_big.jpg','12');return false"><img src="galleryimages/image12.jpg"></a>
				<a href="#" onClick="showPreview('galleryimages/image13_big.jpg','13');return false"><img src="galleryimages/image13.jpg"></a>
				<a href="#" onClick="showPreview('galleryimages/image14_big.jpg','14');return false"><img src="galleryimages/image14.jpg"></a>
				<a href="#" onClick="showPreview('galleryimages/image15_big.jpg','15');return false"><img src="galleryimages/image15.jpg"></a>
				
				<!-- End thumbnails -->

				<!-- Image captions -->	
				<div class="imageCaption">Marriage Photograph 1</div>
				<div class="imageCaption">Marriage Photograph 2</div>
				<div class="imageCaption">Marriage Photograph 3</div>
				<div class="imageCaption">Marriage Photograph 4</div>
				<div class="imageCaption">Marriage Photograph 5</div>
				<div class="imageCaption">Marriage Photograph 6</div>
				<div class="imageCaption">Marriage Photograph 7</div>
				<div class="imageCaption">Marriage Photograph 8</div>
				<div class="imageCaption">Marriage Photograph 9</div>
				<div class="imageCaption">Marriage Photograph 10</div>
				<div class="imageCaption">Marriage Photograph 11</div>
				<div class="imageCaption">Marriage Photograph 12</div>
				<div class="imageCaption">Marriage Photograph 13</div>
				<div class="imageCaption">Marriage Photograph 14</div>
				<div class="imageCaption">Marriage Photograph 15</div>
				
				
				<div id="slideEnd"></div>
		</div>
	</div>
</div></center>
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
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>         </td>
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