<%-- 
    Document   : Partner
    Created on : Jul 4, 2012, 11:13:37 AM
    Author     : abhik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String email=session.getAttribute("email").toString();
%>
<html>
    <head>
       <head>
       <title>DreamTemplate.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">

<script language="javascript">
			var numericExpression = /^[0-9 + -]+$/;
			var alphaExp = /^[a-z A-Z .]+$/;
			function checkSubmit()
			{
				var v1 = document.getElementById("select");
				var v2 = document.getElementById("select2");
				var v3 = document.getElementById("select3");
				var v4 = document.getElementById("select4");
				var v5 = document.getElementById("select5");
				var v6 = document.getElementById("select6");
				var v7 = document.getElementById("select7");
				var v8 = document.getElementById("select8");
				var v9 = document.getElementById("select9");
				var v10 = document.getElementById("select10");
				var v11 = document.getElementById("textfield");
				var v12 = document.getElementById("textfield");
				var v13 = document.getElementById("RadioGroup");
				var v14 = document.getElementById("RadioGroup2");
				var v15 = document.getElementById("RadioGroup3");
				var v16 = document.getElementById("RadioGroup4");
				var v17 = document.getElementById("RadioGroup5");
				var v18 = document.getElementById("RadioGroup6");
				var v19 = document.getElementById("textarea");
				
				if(v1.value == "" || v1.value == null || v2.value == "" || v2.value == null || v3.value == "" || v3.value == null || v4.value == "" || v4.value == null || v5.value == "" || v5.value == null || v6.value == "" || v6.value == null || v7.value == "" || v7.value == null || v8.value == "" || v8.value == null || v9.value == "" || v9.value == null || v10.value == "" || v10.value == null || v11.value == "" || v11.value == null || v12.value == "" || v12.value == null || v13.value == "" || v13.value == null|| v14.value == "" || v14.value == null || v15.value == "" || v15.value == null || v16.value == "" || v16.value == null || v17.value == "" || v17.value == null || v18.value == "" || v18.value == null || v19.value == "" || v19.value == null)
				{
                   alert("Please enter all the required fields!");
				   return false
				   
				}
				else
				{
					return true;
				}
				   
				
			}	
			function checkSubCaste()
			{
				var v = document.getElementById("textfield");
				if(!v.value.match(alphaExp))
				{					
					alert("Invalid Sub-Caste!");
					v.focus()
				}
				
			}
			
			function checkContact()
			{
				var v = document.getElementById("textfield2");
				if(!v.value.match(numericExpression))
				{					
					alert("Invalid Number!");
					v.focus()
				}
				else if(v.value.length!=10)
				{
					alert("Number length must be 10!");
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
       <td><a href="index.jsp"><img src="images/index_04.gif" alt="" width="192" height="80" border="0"></a></td>
        <td><a href="search.jsp"><img src="images/index_05.gif" alt="" width="136" height="80" border="0"></a></td>
        <td><a href="gallery.jsp"><img src="images/index_06.gif" alt="" width="130" height="80" border="0"></a></td>
        <td><a href="feedback.jsp"><img src="images/index_07.gif" alt="" width="144" height="80" border="0"></a></td>
        <td><a href="help.jsp"><img src="images/index_08.gif" alt="" width="133" height="80" border="0"></a></td>
        <td><a href="contactus.jsp"><img src="images/index_09.gif" alt="" width="265" height="80" border="0"></a></td>
      </tr>
      <tr>
        <td colspan="6">
        <form method="POST" action="register2_servlet" onSubmit="return checkSubmit()">
        <table width="992" border="0">
      <tr>
        <td height="47" colspan="2"><h2><strong>Enter your Details-</strong></h2></td>
        <td width="326">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="174"><h3><strong>Email</strong>:</h3></td>
        <td width="478"><input name="textfield3" type="text" id="textfield3" readonly value=<%=email%>></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Marital Status:</strong></td>
        <td><label for="select"></label>
          <select name="select" id="select">
           <option selected>Select</option>
            <option>Never Married</option>
            <option>Divorced</option>
            <option>Widowed</option>
            <option>Awaiting Divorce</option>
            <option>Annulled</option>
          </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Height:</strong></td>
        <td><select name="select2" id="select2">
        <option value="" label="Select" selected="selected">Select</option>

    <option value="53" label="4ft 5in - 134cm">4ft 5in - 134cm</option>
    <option value="54" label="4ft 6in - 137cm">4ft 6in - 137cm</option>
    <option value="55" label="4ft 7in - 139cm">4ft 7in - 139cm</option>
    <option value="56" label="4ft 8in - 142cm">4ft 8in - 142cm</option>
    <option value="57" label="4ft 9in - 144cm">4ft 9in - 144cm</option>
    <option value="58" label="4ft 10in - 147cm">4ft 10in - 147cm</option>

    <option value="59" label="4ft 11in - 149cm">4ft 11in - 149cm</option>
    <option value="60" label="5ft - 152cm">5ft - 152cm</option>
    <option value="61" label="5ft 1in - 154cm">5ft 1in - 154cm</option>
    <option value="62" label="5ft 2in - 157cm">5ft 2in - 157cm</option>
    <option value="63" label="5ft 3in - 160cm">5ft 3in - 160cm</option>
    <option value="64" label="5ft 4in - 162cm">5ft 4in - 162cm</option>

    <option value="65" label="5ft 5in - 165cm">5ft 5in - 165cm</option>
    <option value="66" label="5ft 6in - 167cm">5ft 6in - 167cm</option>
    <option value="67" label="5ft 7in - 170cm">5ft 7in - 170cm</option>
    <option value="68" label="5ft 8in - 172cm">5ft 8in - 172cm</option>
    <option value="69" label="5ft 9in - 175cm">5ft 9in - 175cm</option>
    <option value="70" label="5ft 10in - 177cm">5ft 10in - 177cm</option>

    <option value="71" label="5ft 11in - 180cm">5ft 11in - 180cm</option>
    <option value="72" label="6ft - 182cm">6ft - 182cm</option>
    <option value="73" label="6ft 1in - 185cm">6ft 1in - 185cm</option>
    <option value="74" label="6ft 2in - 187cm">6ft 2in - 187cm</option>
    <option value="75" label="6ft 3in - 190cm">6ft 3in - 190cm</option>
    <option value="76" label="6ft 4in - 193cm">6ft 4in - 193cm</option>

    <option value="77" label="6ft 5in - 195cm">6ft 5in - 195cm</option>
    <option value="78" label="6ft 6in - 198cm">6ft 6in - 198cm</option>
    <option value="79" label="6ft 7in - 200cm">6ft 7in - 200cm</option>
    <option value="80" label="6ft 8in - 203cm">6ft 8in - 203cm</option>
    <option value="81" label="6ft 9in - 205cm">6ft 9in - 205cm</option>
    <option value="82" label="6ft 10in - 208cm">6ft 10in - 208cm</option>

    <option value="83" label="6ft 11in - 210cm">6ft 11in - 210cm</option>
    <option value="84" label="7ft - 213cm">7ft - 213cm</option>
        </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Caste/Section:</strong></td>
        <td><select name="select3" id="select3">
            <option value="" label="Select" selected="selected">Select</option>
    <optgroup id="caste-optgroup-Frequently Used" label="Frequently Used">
    </optgroup>
    <option value="Agarwal" label="Agarwal">Agarwal</option>

    <option value="Arora" label="Arora">Arora</option>
    <option value="Baniya" label="Baniya">Baniya</option>
    <option value="Bhatia" label="Bhatia">Bhatia</option>
    <option value="Brahmin" label="Brahmin">Brahmin</option>
    <option value="Brahmin - Gour" label="Brahmin - Gour">Brahmin - Gour</option>
    <option value="Brahmin - Punjabi" label="Brahmin - Punjabi">Brahmin - Punjabi</option>

    <option value="Brahmin - Saraswat" label="Brahmin - Saraswat">Brahmin - Saraswat</option>
    <option value="Gupta" label="Gupta">Gupta</option>
    <option value="Jat" label="Jat">Jat</option>
    <option value="Kashyap" label="Kashyap">Kashyap</option>
    <option value="Khatri" label="Khatri">Khatri</option>
    <option value="Kshatriya" label="Kshatriya">Kshatriya</option>

    <option value="Mahajan" label="Mahajan">Mahajan</option>
    <option value="Punjabi" label="Punjabi">Punjabi</option>
    <option value="Rajput" label="Rajput">Rajput</option>
    <option value="Ravidasia" label="Ravidasia">Ravidasia</option>
    <option value="Saini" label="Saini">Saini</option>
    <option value="Scheduled Caste" label="Scheduled Caste">Scheduled Caste</option>

    <option value="Sonar" label="Sonar">Sonar</option>
    <optgroup id="caste-optgroup-More" label="More">
    </optgroup>
    <option value="6000 Niyogi" label="6000 Niyogi">6000 Niyogi</option>
    <option value="96K Kokanastha" label="96K Kokanastha">96K Kokanastha</option>
    <option value="Adi Dravida" label="Adi Dravida">Adi Dravida</option>
    <option value="Agri" label="Agri">Agri</option>

    <option value="Ahom" label="Ahom">Ahom</option>
    <option value="Ambalavasi" label="Ambalavasi">Ambalavasi</option>
    <option value="Arekatica" label="Arekatica">Arekatica</option>
    <option value="Arunthathiyar" label="Arunthathiyar">Arunthathiyar</option>
    <option value="Arya Vysya" label="Arya Vysya">Arya Vysya</option>
    <option value="Aryasamaj" label="Aryasamaj">Aryasamaj</option>

    <option value="Baghel/Pal/Gaderiya" label="Baghel/Pal/Gaderiya">Baghel/Pal/Gaderiya</option>
    <option value="Bahi" label="Bahi">Bahi</option>
    <option value="Baidya" label="Baidya">Baidya</option>
    <option value="Baishnab" label="Baishnab">Baishnab</option>
    <option value="Baishya" label="Baishya">Baishya</option>
    <option value="Balija" label="Balija">Balija</option>

    <option value="Banik" label="Banik">Banik</option>
    <option value="Bari" label="Bari">Bari</option>
    <option value="Barujibi" label="Barujibi">Barujibi</option>
    <option value="Bengali" label="Bengali">Bengali</option>
    <option value="Besta" label="Besta">Besta</option>
    <option value="Bhandari" label="Bhandari">Bhandari</option>

    <option value="Bhatraju" label="Bhatraju">Bhatraju</option>
    <option value="Bhavsar" label="Bhavsar">Bhavsar</option>
    <option value="Bhovi" label="Bhovi">Bhovi</option>
    <option value="Billava" label="Billava">Billava</option>
    <option value="Boyer" label="Boyer">Boyer</option>
    <option value="Brahmbatt" label="Brahmbatt">Brahmbatt</option>

    <option value="Brahmin - Anavil" label="Brahmin - Anavil">Brahmin - Anavil</option>
    <option value="Brahmin - Audichya" label="Brahmin - Audichya">Brahmin - Audichya</option>
    <option value="Brahmin - Barendra" label="Brahmin - Barendra">Brahmin - Barendra</option>
    <option value="Brahmin - Bengali" label="Brahmin - Bengali">Brahmin - Bengali</option>
    <option value="Brahmin - Bhatt" label="Brahmin - Bhatt">Brahmin - Bhatt</option>
    <option value="Brahmin - Bhumihar" label="Brahmin - Bhumihar">Brahmin - Bhumihar</option>

    <option value="Brahmin - Brahmbhatt" label="Brahmin - Brahmbhatt">Brahmin - Brahmbhatt</option>
    <option value="Brahmin - Danua" label="Brahmin - Danua">Brahmin - Danua</option>
    <option value="Brahmin - Davadnya" label="Brahmin - Davadnya">Brahmin - Davadnya</option>
    <option value="Brahmin - Deshastha" label="Brahmin - Deshastha">Brahmin - Deshastha</option>
    <option value="Brahmin - Dhiman" label="Brahmin - Dhiman">Brahmin - Dhiman</option>
    <option value="Brahmin - Dravida" label="Brahmin - Dravida">Brahmin - Dravida</option>

    <option value="Brahmin - Garhwali" label="Brahmin - Garhwali">Brahmin - Garhwali</option>
    <option value="Brahmin - Goswami" label="Brahmin - Goswami">Brahmin - Goswami</option>
    <option value="Brahmin - Gowd Saraswat" label="Brahmin - Gowd Saraswat">Brahmin - Gowd Saraswat</option>
    <option value="Brahmin - Gurukkal" label="Brahmin - Gurukkal">Brahmin - Gurukkal</option>
    <option value="Brahmin - Halua" label="Brahmin - Halua">Brahmin - Halua</option>
    <option value="Brahmin - Havyaka" label="Brahmin - Havyaka">Brahmin - Havyaka</option>

    <option value="Brahmin - Himachali" label="Brahmin - Himachali">Brahmin - Himachali</option>
    <option value="Brahmin - Hoysala" label="Brahmin - Hoysala">Brahmin - Hoysala</option>
    <option value="Brahmin - Iyengar" label="Brahmin - Iyengar">Brahmin - Iyengar</option>
    <option value="Brahmin - Iyer" label="Brahmin - Iyer">Brahmin - Iyer</option>
    <option value="Brahmin - Jhadua" label="Brahmin - Jhadua">Brahmin - Jhadua</option>
    <option value="Brahmin - Jhijhotiya" label="Brahmin - Jhijhotiya">Brahmin - Jhijhotiya</option>

    <option value="Brahmin - Kannada Madhva" label="Brahmin - Kannada Madhva">Brahmin - Kannada Madhva</option>
    <option value="Brahmin - Kanyakubja" label="Brahmin - Kanyakubja">Brahmin - Kanyakubja</option>
    <option value="Brahmin - Karhade" label="Brahmin - Karhade">Brahmin - Karhade</option>
    <option value="Brahmin - Kashmiri Pandit" label="Brahmin - Kashmiri Pandit">Brahmin - Kashmiri Pandit</option>
    <option value="Brahmin - Kokanastha" label="Brahmin - Kokanastha">Brahmin - Kokanastha</option>
    <option value="Brahmin - Kota" label="Brahmin - Kota">Brahmin - Kota</option>

    <option value="Brahmin - Kulin" label="Brahmin - Kulin">Brahmin - Kulin</option>
    <option value="Brahmin - Kumaoni" label="Brahmin - Kumaoni">Brahmin - Kumaoni</option>
    <option value="Brahmin - Madhwa" label="Brahmin - Madhwa">Brahmin - Madhwa</option>
    <option value="Brahmin - Maharashtrian" label="Brahmin - Maharashtrian">Brahmin - Maharashtrian</option>
    <option value="Brahmin - Maithili" label="Brahmin - Maithili">Brahmin - Maithili</option>
    <option value="Brahmin - Modh" label="Brahmin - Modh">Brahmin - Modh</option>

    <option value="Brahmin - Mohyal" label="Brahmin - Mohyal">Brahmin - Mohyal</option>
    <option value="Brahmin - Nagar" label="Brahmin - Nagar">Brahmin - Nagar</option>
    <option value="Brahmin - Namboodiri" label="Brahmin - Namboodiri">Brahmin - Namboodiri</option>
    <option value="Brahmin - Niyogi Nandavariki" label="Brahmin - Niyogi Nandavariki">Brahmin - Niyogi Nandavariki</option>
    <option value="Brahmin - Paliwal" label="Brahmin - Paliwal">Brahmin - Paliwal</option>
    <option value="Brahmin - Panda" label="Brahmin - Panda">Brahmin - Panda</option>

    <option value="Brahmin - Pareek" label="Brahmin - Pareek">Brahmin - Pareek</option>
    <option value="Brahmin - Pushkarna" label="Brahmin - Pushkarna">Brahmin - Pushkarna</option>
    <option value="Brahmin - Rarhi" label="Brahmin - Rarhi">Brahmin - Rarhi</option>
    <option value="Brahmin - Rudraj" label="Brahmin - Rudraj">Brahmin - Rudraj</option>
    <option value="Brahmin - Sakaldwipi" label="Brahmin - Sakaldwipi">Brahmin - Sakaldwipi</option>
    <option value="Brahmin - Sanadya" label="Brahmin - Sanadya">Brahmin - Sanadya</option>

    <option value="Brahmin - Sanketi" label="Brahmin - Sanketi">Brahmin - Sanketi</option>
    <option value="Brahmin - Saryuparin" label="Brahmin - Saryuparin">Brahmin - Saryuparin</option>
    <option value="Brahmin - Shivhalli" label="Brahmin - Shivhalli">Brahmin - Shivhalli</option>
    <option value="Brahmin - Shrimali" label="Brahmin - Shrimali">Brahmin - Shrimali</option>
    <option value="Brahmin - Smartha" label="Brahmin - Smartha">Brahmin - Smartha</option>
    <option value="Brahmin - Sri Vishnava" label="Brahmin - Sri Vishnava">Brahmin - Sri Vishnava</option>

    <option value="Brahmin - Stanika" label="Brahmin - Stanika">Brahmin - Stanika</option>
    <option value="Brahmin - Tamil" label="Brahmin - Tamil">Brahmin - Tamil</option>
    <option value="Brahmin - Telugu" label="Brahmin - Telugu">Brahmin - Telugu</option>
    <option value="Brahmin - Tyagi" label="Brahmin - Tyagi">Brahmin - Tyagi</option>
    <option value="Brahmin - Vaidiki" label="Brahmin - Vaidiki">Brahmin - Vaidiki</option>
    <option value="Brahmin - Velanadu" label="Brahmin - Velanadu">Brahmin - Velanadu</option>

    <option value="Brahmin - Viswa" label="Brahmin - Viswa">Brahmin - Viswa</option>
    <option value="Brahmin - Vyas" label="Brahmin - Vyas">Brahmin - Vyas</option>
    <option value="Brahmo" label="Brahmo">Brahmo</option>
    <option value="Buddar" label="Buddar">Buddar</option>
    <option value="Bunt" label="Bunt">Bunt</option>
    <option value="CKP" label="CKP">CKP</option>

    <option value="Chambhar" label="Chambhar">Chambhar</option>
    <option value="Chandravanshi Kahar" label="Chandravanshi Kahar">Chandravanshi Kahar</option>
    <option value="Chasa" label="Chasa">Chasa</option>
    <option value="Chattada Sri Vaishnava" label="Chattada Sri Vaishnava">Chattada Sri Vaishnava</option>
    <option value="Chaudary" label="Chaudary">Chaudary</option>
    <option value="Chaurasia" label="Chaurasia">Chaurasia</option>

    <option value="Chekkala - Nair" label="Chekkala - Nair">Chekkala - Nair</option>
    <option value="Cheramar" label="Cheramar">Cheramar</option>
    <option value="Chettiar" label="Chettiar">Chettiar</option>
    <option value="Chhetri" label="Chhetri">Chhetri</option>
    <option value="Chippolu (Mera)" label="Chippolu (Mera)">Chippolu (Mera)</option>
    <option value="Coorgi" label="Coorgi">Coorgi</option>

    <option value="Devadiga" label="Devadiga">Devadiga</option>
    <option value="Devanga" label="Devanga">Devanga</option>
    <option value="Devendra Kula Vellalar" label="Devendra Kula Vellalar">Devendra Kula Vellalar</option>
    <option value="Dhangar" label="Dhangar">Dhangar</option>
    <option value="Dheevara" label="Dheevara">Dheevara</option>
    <option value="Dhiman" label="Dhiman">Dhiman</option>

    <option value="Dhoba" label="Dhoba">Dhoba</option>
    <option value="Dhobi" label="Dhobi">Dhobi</option>
    <option value="Digambar" label="Digambar">Digambar</option>
    <option value="Ediga" label="Ediga">Ediga</option>
    <option value="Ezhava" label="Ezhava">Ezhava</option>
    <option value="Ezhavathi" label="Ezhavathi">Ezhavathi</option>

    <option value="Ezhuthachan" label="Ezhuthachan">Ezhuthachan</option>
    <option value="Gabit" label="Gabit">Gabit</option>
    <option value="Ganakar" label="Ganakar">Ganakar</option>
    <option value="Gandla" label="Gandla">Gandla</option>
    <option value="Ganiga" label="Ganiga">Ganiga</option>
    <option value="Garhwali" label="Garhwali">Garhwali</option>

    <option value="Gavali" label="Gavali">Gavali</option>
    <option value="Gavara" label="Gavara">Gavara</option>
    <option value="Ghumar" label="Ghumar">Ghumar</option>
    <option value="Goala" label="Goala">Goala</option>
    <option value="Goan" label="Goan">Goan</option>
    <option value="Goswami" label="Goswami">Goswami</option>

    <option value="Goud" label="Goud">Goud</option>
    <option value="Goud Saraswat Brahmin (GSB)" label="Goud Saraswat Brahmin (GSB)">Goud Saraswat Brahmin (GSB)</option>
    <option value="Gounder" label="Gounder">Gounder</option>
    <option value="Gowda" label="Gowda">Gowda</option>
    <option value="Gramani" label="Gramani">Gramani</option>
    <option value="Gudia" label="Gudia">Gudia</option>

    <option value="Gujarati" label="Gujarati">Gujarati</option>
    <option value="Gujjar" label="Gujjar">Gujjar</option>
    <option value="Guptan" label="Guptan">Guptan</option>
    <option value="Gurjar" label="Gurjar">Gurjar</option>
    <option value="Hegde" label="Hegde">Hegde</option>
    <option value="Hugar (Jeer)" label="Hugar (Jeer)">Hugar (Jeer)</option>

    <option value="Iyer - Brahmin" label="Iyer - Brahmin">Iyer - Brahmin</option>
    <option value="Jaalari" label="Jaalari">Jaalari</option>
    <option value="Jaiswal" label="Jaiswal">Jaiswal</option>
    <option value="Jandra" label="Jandra">Jandra</option>
    <option value="Jangam" label="Jangam">Jangam</option>
    <option value="Jatav" label="Jatav">Jatav</option>

    <option value="Kachara" label="Kachara">Kachara</option>
    <option value="Kaibarta" label="Kaibarta">Kaibarta</option>
    <option value="Kakkalan" label="Kakkalan">Kakkalan</option>
    <option value="Kalar" label="Kalar">Kalar</option>
    <option value="Kalinga" label="Kalinga">Kalinga</option>
    <option value="Kalinga Vysya" label="Kalinga Vysya">Kalinga Vysya</option>

    <option value="Kalita" label="Kalita">Kalita</option>
    <option value="Kalwar" label="Kalwar">Kalwar</option>
    <option value="Kamboj" label="Kamboj">Kamboj</option>
    <option value="Kamma" label="Kamma">Kamma</option>
    <option value="Kammala" label="Kammala">Kammala</option>
    <option value="Kaniyan" label="Kaniyan">Kaniyan</option>

    <option value="Kannada Mogaveera" label="Kannada Mogaveera">Kannada Mogaveera</option>
    <option value="Kansari" label="Kansari">Kansari</option>
    <option value="Kapu" label="Kapu">Kapu</option>
    <option value="Kapu Naidu" label="Kapu Naidu">Kapu Naidu</option>
    <option value="Karana" label="Karana">Karana</option>
    <option value="Karmakar" label="Karmakar">Karmakar</option>

    <option value="Kartha" label="Kartha">Kartha</option>
    <option value="Karuneegar" label="Karuneegar">Karuneegar</option>
    <option value="Kasar" label="Kasar">Kasar</option>
    <option value="Kayastha" label="Kayastha">Kayastha</option>
    <option value="Khandayat" label="Khandayat">Khandayat</option>
    <option value="Khandelwal" label="Khandelwal">Khandelwal</option>

    <option value="Kharwar" label="Kharwar">Kharwar</option>
    <option value="Khatik" label="Khatik">Khatik</option>
    <option value="Koli" label="Koli">Koli</option>
    <option value="Kongu Vellala Gounder" label="Kongu Vellala Gounder">Kongu Vellala Gounder</option>
    <option value="Konkani" label="Konkani">Konkani</option>
    <option value="Kori" label="Kori">Kori</option>

    <option value="Koshti" label="Koshti">Koshti</option>
    <option value="Kshatriya - Agnikula" label="Kshatriya - Agnikula">Kshatriya - Agnikula</option>
    <option value="Kshatriya - Bhavasar" label="Kshatriya - Bhavasar">Kshatriya - Bhavasar</option>
    <option value="Kudumbi" label="Kudumbi">Kudumbi</option>
    <option value="Kulal" label="Kulal">Kulal</option>
    <option value="Kulalar" label="Kulalar">Kulalar</option>

    <option value="Kulita" label="Kulita">Kulita</option>
    <option value="Kumawat" label="Kumawat">Kumawat</option>
    <option value="Kumbara" label="Kumbara">Kumbara</option>
    <option value="Kumbhakar/Kumbhar" label="Kumbhakar/Kumbhar">Kumbhakar/Kumbhar</option>
    <option value="Kumhar" label="Kumhar">Kumhar</option>
    <option value="Kummari" label="Kummari">Kummari</option>

    <option value="Kunbi" label="Kunbi">Kunbi</option>
    <option value="Kurava" label="Kurava">Kurava</option>
    <option value="Kuravan" label="Kuravan">Kuravan</option>
    <option value="Kurmi" label="Kurmi">Kurmi</option>
    <option value="Kuruba" label="Kuruba">Kuruba</option>
    <option value="Kuruhina Shetty" label="Kuruhina Shetty">Kuruhina Shetty</option>

    <option value="Kurumbar" label="Kurumbar">Kurumbar</option>
    <option value="Kurup" label="Kurup">Kurup</option>
    <option value="Kushwaha" label="Kushwaha">Kushwaha</option>
    <option value="Kutchi" label="Kutchi">Kutchi</option>
    <option value="Lambani" label="Lambani">Lambani</option>
    <option value="Leva Patil" label="Leva Patil">Leva Patil</option>

    <option value="Lingayat" label="Lingayat">Lingayat</option>
    <option value="Lohana" label="Lohana">Lohana</option>
    <option value="Lohar" label="Lohar">Lohar</option>
    <option value="Lubana" label="Lubana">Lubana</option>
    <option value="Madiga" label="Madiga">Madiga</option>
    <option value="Mahar" label="Mahar">Mahar</option>

    <option value="Maharashtrian" label="Maharashtrian">Maharashtrian</option>
    <option value="Mahendra" label="Mahendra">Mahendra</option>
    <option value="Maheshwari" label="Maheshwari">Maheshwari</option>
    <option value="Mahindra" label="Mahindra">Mahindra</option>
    <option value="Mahishya" label="Mahishya">Mahishya</option>
    <option value="Majabi" label="Majabi">Majabi</option>

    <option value="Mala" label="Mala">Mala</option>
    <option value="Malayalee Variar" label="Malayalee Variar">Malayalee Variar</option>
    <option value="Mali" label="Mali">Mali</option>
    <option value="Malla" label="Malla">Malla</option>
    <option value="Mangalorean" label="Mangalorean">Mangalorean</option>
    <option value="Maniyani" label="Maniyani">Maniyani</option>

    <option value="Mannadiar" label="Mannadiar">Mannadiar</option>
    <option value="Mannan" label="Mannan">Mannan</option>
    <option value="Mannuru Kapu" label="Mannuru Kapu">Mannuru Kapu</option>
    <option value="Mapila" label="Mapila">Mapila</option>
    <option value="Marar" label="Marar">Marar</option>
    <option value="Maratha" label="Maratha">Maratha</option>

    <option value="Maratha - Gomantak" label="Maratha - Gomantak">Maratha - Gomantak</option>
    <option value="Maruthuvar" label="Maruthuvar">Maruthuvar</option>
    <option value="Marvar" label="Marvar">Marvar</option>
    <option value="Marwari" label="Marwari">Marwari</option>
    <option value="Matang" label="Matang">Matang</option>
    <option value="Maurya" label="Maurya">Maurya</option>

    <option value="Meda" label="Meda">Meda</option>
    <option value="Medara" label="Medara">Medara</option>
    <option value="Meena" label="Meena">Meena</option>
    <option value="Meenavar" label="Meenavar">Meenavar</option>
    <option value="Mehra" label="Mehra">Mehra</option>
    <option value="Menon" label="Menon">Menon</option>

    <option value="Meru Darji" label="Meru Darji">Meru Darji</option>
    <option value="Modak" label="Modak">Modak</option>
    <option value="Mogaveera" label="Mogaveera">Mogaveera</option>
    <option value="Monchi" label="Monchi">Monchi</option>
    <option value="Mudaliar" label="Mudaliar">Mudaliar</option>
    <option value="Mudaliar - Arcot" label="Mudaliar - Arcot">Mudaliar - Arcot</option>

    <option value="Mudaliar - Saiva" label="Mudaliar - Saiva">Mudaliar - Saiva</option>
    <option value="Mudaliar - Senguntha" label="Mudaliar - Senguntha">Mudaliar - Senguntha</option>
    <option value="Mudiraj" label="Mudiraj">Mudiraj</option>
    <option value="Mukkulathor" label="Mukkulathor">Mukkulathor</option>
    <option value="Mukulathur" label="Mukulathur">Mukulathur</option>
    <option value="Muthuraja" label="Muthuraja">Muthuraja</option>

    <option value="Naagavamsam" label="Naagavamsam">Naagavamsam</option>
    <option value="Nadar" label="Nadar">Nadar</option>
    <option value="Nagaralu" label="Nagaralu">Nagaralu</option>
    <option value="Nai" label="Nai">Nai</option>
    <option value="Naicken" label="Naicken">Naicken</option>
    <option value="Naicker" label="Naicker">Naicker</option>

    <option value="Naidu" label="Naidu">Naidu</option>
    <option value="Naidu - Balija" label="Naidu - Balija">Naidu - Balija</option>
    <option value="Naik" label="Naik">Naik</option>
    <option value="Nair" label="Nair">Nair</option>
    <option value="Nair - Chekkala" label="Nair - Chekkala">Nair - Chekkala</option>
    <option value="Nair - Vaniya" label="Nair - Vaniya">Nair - Vaniya</option>

    <option value="Nair - Velethadathu" label="Nair - Velethadathu">Nair - Velethadathu</option>
    <option value="Nair - Veluthedathu" label="Nair - Veluthedathu">Nair - Veluthedathu</option>
    <option value="Nair - Vilakkithala" label="Nair - Vilakkithala">Nair - Vilakkithala</option>
    <option value="Namasudra" label="Namasudra">Namasudra</option>
    <option value="Nambiar" label="Nambiar">Nambiar</option>
    <option value="Nambisan" label="Nambisan">Nambisan</option>

    <option value="Namboodiri - Brahmin" label="Namboodiri - Brahmin">Namboodiri - Brahmin</option>
    <option value="Namosudra" label="Namosudra">Namosudra</option>
    <option value="Napit" label="Napit">Napit</option>
    <option value="Nayak" label="Nayak">Nayak</option>
    <option value="Neeli" label="Neeli">Neeli</option>
    <option value="Nepali" label="Nepali">Nepali</option>

    <option value="Nhavi" label="Nhavi">Nhavi</option>
    <option value="OBC (Barber-Naayee)" label="OBC (Barber-Naayee)">OBC (Barber-Naayee)</option>
    <option value="Oswal" label="Oswal">Oswal</option>
    <option value="Otari" label="Otari">Otari</option>
    <option value="Padmashali" label="Padmashali">Padmashali</option>
    <option value="Panchal" label="Panchal">Panchal</option>

    <option value="Panicker" label="Panicker">Panicker</option>
    <option value="Paravan" label="Paravan">Paravan</option>
    <option value="Parit" label="Parit">Parit</option>
    <option value="Parkava Kulam" label="Parkava Kulam">Parkava Kulam</option>
    <option value="Partraj" label="Partraj">Partraj</option>
    <option value="Patel" label="Patel">Patel</option>

    <option value="Patel - Desai" label="Patel - Desai">Patel - Desai</option>
    <option value="Patel - Dodia" label="Patel - Dodia">Patel - Dodia</option>
    <option value="Patel - Kadva" label="Patel - Kadva">Patel - Kadva</option>
    <option value="Patel - Leva" label="Patel - Leva">Patel - Leva</option>
    <option value="Patnaick" label="Patnaick">Patnaick</option>
    <option value="Patra" label="Patra">Patra</option>

    <option value="Perika" label="Perika">Perika</option>
    <option value="Pillai" label="Pillai">Pillai</option>
    <option value="Pisharody" label="Pisharody">Pisharody</option>
    <option value="Poduval" label="Poduval">Poduval</option>
    <option value="Prajapati" label="Prajapati">Prajapati</option>
    <option value="Pulaya" label="Pulaya">Pulaya</option>

    <option value="Rajaka" label="Rajaka">Rajaka</option>
    <option value="Rajbhar" label="Rajbhar">Rajbhar</option>
    <option value="Rajput - Garhwali" label="Rajput - Garhwali">Rajput - Garhwali</option>
    <option value="Rajput - Kumaoni" label="Rajput - Kumaoni">Rajput - Kumaoni</option>
    <option value="Rajput - Lodhi" label="Rajput - Lodhi">Rajput - Lodhi</option>
    <option value="Ramdasia" label="Ramdasia">Ramdasia</option>

    <option value="Ramgharia" label="Ramgharia">Ramgharia</option>
    <option value="Rawat" label="Rawat">Rawat</option>
    <option value="Reddiar" label="Reddiar">Reddiar</option>
    <option value="Reddy" label="Reddy">Reddy</option>
    <option value="Relli" label="Relli">Relli</option>
    <option value="SSK" label="SSK">SSK</option>

    <option value="Sadgop" label="Sadgop">Sadgop</option>
    <option value="Saha" label="Saha">Saha</option>
    <option value="Sahu" label="Sahu">Sahu</option>
    <option value="Saiva Vellala" label="Saiva Vellala">Saiva Vellala</option>
    <option value="Saliya" label="Saliya">Saliya</option>
    <option value="Sambava" label="Sambava">Sambava</option>

    <option value="Saraswat - Brahmin" label="Saraswat - Brahmin">Saraswat - Brahmin</option>
    <option value="Savji" label="Savji">Savji</option>
    <option value="Scheduled Tribe" label="Scheduled Tribe">Scheduled Tribe</option>
    <option value="Senai Thalaivar" label="Senai Thalaivar">Senai Thalaivar</option>
    <option value="Sepahia" label="Sepahia">Sepahia</option>
    <option value="Setti Balija" label="Setti Balija">Setti Balija</option>

    <option value="Shah" label="Shah">Shah</option>
    <option value="Shimpi" label="Shimpi">Shimpi</option>
    <option value="Sindhi" label="Sindhi">Sindhi</option>
    <option value="Sindhi - Bhanusali" label="Sindhi - Bhanusali">Sindhi - Bhanusali</option>
    <option value="Sindhi - Bhatia" label="Sindhi - Bhatia">Sindhi - Bhatia</option>
    <option value="Sindhi - Chhapru" label="Sindhi - Chhapru">Sindhi - Chhapru</option>

    <option value="Sindhi - Dadu" label="Sindhi - Dadu">Sindhi - Dadu</option>
    <option value="Sindhi - Hyderabadi" label="Sindhi - Hyderabadi">Sindhi - Hyderabadi</option>
    <option value="Sindhi - Larai" label="Sindhi - Larai">Sindhi - Larai</option>
    <option value="Sindhi - Lohana" label="Sindhi - Lohana">Sindhi - Lohana</option>
    <option value="Sindhi - Rohiri" label="Sindhi - Rohiri">Sindhi - Rohiri</option>
    <option value="Sindhi - Sehwani" label="Sindhi - Sehwani">Sindhi - Sehwani</option>

    <option value="Sindhi - Thatai" label="Sindhi - Thatai">Sindhi - Thatai</option>
    <option value="Sindhi-Amil" label="Sindhi-Amil">Sindhi-Amil</option>
    <option value="Sindhi-Baibhand" label="Sindhi-Baibhand">Sindhi-Baibhand</option>
    <option value="Sindhi-Larkana" label="Sindhi-Larkana">Sindhi-Larkana</option>
    <option value="Sindhi-Sahiti" label="Sindhi-Sahiti">Sindhi-Sahiti</option>
    <option value="Sindhi-Sakkhar" label="Sindhi-Sakkhar">Sindhi-Sakkhar</option>

    <option value="Sindhi-Shikarpuri" label="Sindhi-Shikarpuri">Sindhi-Shikarpuri</option>
    <option value="Somvanshi" label="Somvanshi">Somvanshi</option>
    <option value="Soni" label="Soni">Soni</option>
    <option value="Sowrashtra" label="Sowrashtra">Sowrashtra</option>
    <option value="Sozhiya Vellalar" label="Sozhiya Vellalar">Sozhiya Vellalar</option>
    <option value="Srisayani" label="Srisayani">Srisayani</option>

    <option value="Subarna Banik" label="Subarna Banik">Subarna Banik</option>
    <option value="Sugali (Naika)" label="Sugali (Naika)">Sugali (Naika)</option>
    <option value="Sundhi" label="Sundhi">Sundhi</option>
    <option value="Sutar" label="Sutar">Sutar</option>
    <option value="Swarnakar" label="Swarnakar">Swarnakar</option>
    <option value="Tamboli" label="Tamboli">Tamboli</option>

    <option value="Tamil Yadava" label="Tamil Yadava">Tamil Yadava</option>
    <option value="Tanti" label="Tanti">Tanti</option>
    <option value="Tantuway" label="Tantuway">Tantuway</option>
    <option value="Telaga" label="Telaga">Telaga</option>
    <option value="Teli" label="Teli">Teli</option>
    <option value="Telugu" label="Telugu">Telugu</option>

    <option value="Thachar" label="Thachar">Thachar</option>
    <option value="Thakkar" label="Thakkar">Thakkar</option>
    <option value="Thakur" label="Thakur">Thakur</option>
    <option value="Thandan" label="Thandan">Thandan</option>
    <option value="Thevar" label="Thevar">Thevar</option>
    <option value="Thigala" label="Thigala">Thigala</option>

    <option value="Thiyya" label="Thiyya">Thiyya</option>
    <option value="Togata" label="Togata">Togata</option>
    <option value="Turupu Kapu" label="Turupu Kapu">Turupu Kapu</option>
    <option value="Udayar" label="Udayar">Udayar</option>
    <option value="Uppara" label="Uppara">Uppara</option>
    <option value="Urs" label="Urs">Urs</option>

    <option value="Vadagalai" label="Vadagalai">Vadagalai</option>
    <option value="Vaddera" label="Vaddera">Vaddera</option>
    <option value="Vaduka" label="Vaduka">Vaduka</option>
    <option value="Vaish" label="Vaish">Vaish</option>
    <option value="Vaish - Dhaneshawat" label="Vaish - Dhaneshawat">Vaish - Dhaneshawat</option>
    <option value="Vaishnav" label="Vaishnav">Vaishnav</option>

    <option value="Vaishnav - Bhatia" label="Vaishnav - Bhatia">Vaishnav - Bhatia</option>
    <option value="Vaishnav - Vania" label="Vaishnav - Vania">Vaishnav - Vania</option>
    <option value="Vaishnava" label="Vaishnava">Vaishnava</option>
    <option value="Vaishya" label="Vaishya">Vaishya</option>
    <option value="Vallala" label="Vallala">Vallala</option>
    <option value="Valluvan" label="Valluvan">Valluvan</option>

    <option value="Valmiki" label="Valmiki">Valmiki</option>
    <option value="Vaniya - Nair" label="Vaniya - Nair">Vaniya - Nair</option>
    <option value="Vanjara" label="Vanjara">Vanjara</option>
    <option value="Vankar" label="Vankar">Vankar</option>
    <option value="Vannan" label="Vannan">Vannan</option>
    <option value="Vannar" label="Vannar">Vannar</option>

    <option value="Vanniyakullak Kshatriya" label="Vanniyakullak Kshatriya">Vanniyakullak Kshatriya</option>
    <option value="Vanniyar" label="Vanniyar">Vanniyar</option>
    <option value="Variar" label="Variar">Variar</option>
    <option value="Varshney" label="Varshney">Varshney</option>
    <option value="Veera Saivam" label="Veera Saivam">Veera Saivam</option>
    <option value="Veerashaiva" label="Veerashaiva">Veerashaiva</option>

    <option value="Velaan" label="Velaan">Velaan</option>
    <option value="Velar" label="Velar">Velar</option>
    <option value="Vellalar" label="Vellalar">Vellalar</option>
    <option value="Vellama" label="Vellama">Vellama</option>
    <option value="Veluthedathu - Nair" label="Veluthedathu - Nair">Veluthedathu - Nair</option>
    <option value="Vilakithala - Nair" label="Vilakithala - Nair">Vilakithala - Nair</option>

    <option value="Vishwakarma" label="Vishwakarma">Vishwakarma</option>
    <option value="Viswabrahmin" label="Viswabrahmin">Viswabrahmin</option>
    <option value="Vokaliga" label="Vokaliga">Vokaliga</option>
    <option value="Vysya" label="Vysya">Vysya</option>
    <option value="Waada Balija" label="Waada Balija">Waada Balija</option>
    <option value="Warrier" label="Warrier">Warrier</option>

    <option value="Yadav" label="Yadav">Yadav</option>
    <option value="Other" label="Other">Other</option>
        </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Sub-Caste/Section:</strong></td>
        <td><input type="text" name="textfield" id="textfield" onBlur="checkSubCaste()"></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="21" colspan="3">____________________________________________________________________________________________________________________________________________________________________</td>
        </tr>
      <tr>
        <td height="21">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="25"><strong>Diet:</strong></td>
        <td><p>
          <label>
            <input type="radio" name="RadioGroup1" value="Veg" id="RadioGroup1_0">
            Veg</label>
          <label>
            <input type="radio" name="RadioGroup1" value="Non-Veg" id="RadioGroup1_1">
            Non-Veg</label>
          <label>
            <input type="radio" name="RadioGroup1" value="Occationally Non-Veg" id="RadioGroup1_2">
            Occationally Non-Veg</label>
          <label>
            <input type="radio" name="RadioGroup1" value="Eggatarian" id="RadioGroup1_3">
            Eggatarian</label>
          <label>
            <input type="radio" name="RadioGroup1" value="Jain" id="RadioGroup1_4">
            Jain</label>
          <label>
            <input type="radio" name="RadioGroup1" value="Vegan" id="RadioGroup1_5">
            Vegan</label>
          <br>
        </p></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="27"><strong>Smoke:</strong></td>
        <td><p>
          <label>
            <input type="radio" name="RadioGroup2" value="No" id="RadioGroup2_0">
            No</label>
          <label>
            <input type="radio" name="RadioGroup2" value="Occationally" id="RadioGroup2_1">
            Occationally</label>
          <label>
            <input type="radio" name="RadioGroup2" value="Yes" id="RadioGroup2_2">
            Yes</label>
          <br>
        </p></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="23"><strong>Drink:</strong></td>
        <td><p>
          <label>
            <input type="radio" name="RadioGroup3" value="No" id="RadioGroup3_0">
            No</label>
          <label>
            <input type="radio" name="RadioGroup3" value="Occationally" id="RadioGroup3_1">
            Occationally</label>
          <label>
            <input type="radio" name="RadioGroup3" value="Yes" id="RadioGroup3_2">
            Yes</label>
          <br>
        </p></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="27"><strong>Personal Values:</strong></td>
        <td><p>
          <label>
            <input type="radio" name="RadioGroup4" value="Traditional" id="RadioGroup4_0">
            Traditonal</label>
          <label>
            <input type="radio" name="RadioGroup4" value="Morderate" id="RadioGroup4_1">
            Morderate</label>
          <label>
            <input type="radio" name="RadioGroup4" value="Liberal" id="RadioGroup4_2">
            Liberal</label>
        </p></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="22" colspan="3">____________________________________________________________________________________________________________________________________________________________________</td>
        </tr>
      <tr>
        <td height="23">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="27"><strong>Complexion:</strong></td>
        <td><p>
          <label>
            <input type="radio" name="RadioGroup5" value="Very Fair" id="RadioGroup5_0">
            Very Fair</label>
          <label>
            <input type="radio" name="RadioGroup5" value="Fair" id="RadioGroup5_1">
            Fair </label>
          <label>
            <input type="radio" name="RadioGroup5" value="Wheatish" id="RadioGroup5_2">
            Wheatish</label>
          <label>
            <input type="radio" name="RadioGroup5" value="Dark" id="RadioGroup5_3">
            Dark</label>
          <br>
        </p></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="28"><strong>Body Type:</strong></td>
        <td><p>
          <label>
            <input type="radio" name="RadioGroup6" value="Slim" id="RadioGroup6_0">
            Slim</label>
          <label>
            <input type="radio" name="RadioGroup6" value="Athletic" id="RadioGroup6_1">
            Athletic</label>
          <label>
            <input type="radio" name="RadioGroup6" value="Average" id="RadioGroup6_2">
            Average</label>
          <label>
            <input type="radio" name="RadioGroup6" value="Heavy" id="RadioGroup6_3">
            Heavy</label>
          <br>
        </p></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="21" colspan="3">____________________________________________________________________________________________________________________________________________________________________</td>
        </tr>
      <tr>
        <td height="21">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>State Living In:</strong></td>
        <td><select name="select4" id="select4">
          <option selected>Select</option>
          <option value="Andhra Pradesh">Andhra Pradesh</option>
          <option value="Arunachal Pradesh">Arunachal Pradesh</option>
          <option value="Assam">Assam</option>
          <option value="Bihar">Bihar</option>
          <option value="Chhattisgarh">Chhattisgarh</option>
          <option value="Delhi">Delhi</option>
          <option value="Goa">Goa</option>
          <option value="Gujarat">Gujarat</option>
          <option value="Haryana">Haryana</option>
          <option value="Himachal Pradesh">Himachal Pradesh</option>
          <option value="Jammu and Kashmir">Jammu and Kashmir</option>
          <option value="Jharkhand">Jharkhand</option>
          <option value="Karnataka">Karnataka</option>
          <option value="Kerala">Kerala</option>
          <option value="Madhya Pradesh">Madhya Pradesh</option>
          <option value="Maharashtra">Maharashtra</option>
          <option value="Manipur">Manipur</option>
          <option value="Meghalaya">Meghalaya</option>
          <option value="Mizoram">Mizoram</option>
          <option value="Nagaland">Nagaland</option>
          <option value="Orissa">Orissa</option>
          <option value="Punjab">Punjab</option>
          <option value="Rajasthan">Rajasthan</option>
          <option value="Sikkim">Sikkim</option>
          <option value="Tamil Nadu">Tamil Nadu</option>
          <option value="Tripura">Tripura</option>
          <option value="Uttaranchal">Uttaranchal</option>
          <option value="Uttar Pradesh">Uttar Pradesh</option>
          <option value="West Bengal">West Bengal</option>
          <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
          <option value="Lakshadeep">Lakshadeep</option>
          <option value="Pondicherry">Pondicherry</option>  
          
          </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>City Living In:</strong></td>
        <td><select name="select5" id="select5">
        <option value="Select" selected>Select</option>
          <option value="Kolkata">Kolkata</option>
          <option value="Chennai">Chennai</option>
          <option value="Mumbai">Mumbai</option>
          <option value="Delhi">Delhi</option>
          <option value="Pune">Pune</option>
          <option value="Mysore">Mysore</option>
          <option value="Bangalore">Bangalore</option>
          <option value="Hyderabad">Hyderabad</option>
          <option value="Jaipur">Jaipur</option>
          <option value="Udaipur">Udaipur</option>
          <option value="Jaisalmer">Jaisalmer</option>
          <option value="Tiruvananthapuram">Tiruvananthapuram</option>
          <option value="Trivandrum">Trivandrum</option>
          <option value="Noida">Noida</option>
          <option value="Gurgaon">Gurgaon</option>
          <option value="Patna">Patna</option>
          <option value="Guwahati">Guwahati</option>
          <option value="Dehradun">Dehradun</option>
          
        </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Contact Number:</strong></td>
        <td><input type="text" name="textfield2" id="textfield2" onBlur="checkContact()"></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="22" colspan="3">____________________________________________________________________________________________________________________________________________________________________</td>
        </tr>
      <tr>
        <td height="20">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Education Level: </strong></td>
        <td><select name="select6" id="select6">
            <option value="" label="Select" selected="selected">Select</option>
    <option value="Bachelors" label="Bachelors">Bachelors</option>
    <option value="Masters" label="Masters">Masters</option>
    <option value="Doctorate" label="Doctorate">Doctorate</option>
    <option value="Diploma" label="Diploma">Diploma</option>

    <option value="Undergraduate" label="Undergraduate">Undergraduate</option>
    <option value="Associates degree" label="Associates degree">Associates degree</option>
    <option value="Honours degree" label="Honours degree">Honours degree</option>
    <option value="Trade school" label="Trade school">Trade school</option>
    <option value="High school" label="High school">High school</option>
        </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Education Field:</strong></td>
        <td><select name="select7" id="select7">
        <option value="" label="Select" selected="selected">Select</option>
    <option value="Advertising/ Marketing" label="Advertising/ Marketing">Advertising/ Marketing</option>
    <option value="Administrative services" label="Administrative services">Administrative services</option>
    <option value="Architecture" label="Architecture">Architecture</option>
    <option value="Armed Forces" label="Armed Forces">Armed Forces</option>

    <option value="Arts" label="Arts">Arts</option>
    <option value="Commerce" label="Commerce">Commerce</option>
    <option value="Computers/ IT" label="Computers/ IT">Computers/ IT</option>
    <option value="Education" label="Education">Education</option>
    <option value="Engineering/ Technology" label="Engineering/ Technology">Engineering/ Technology</option>
    <option value="Fashion" label="Fashion">Fashion</option>

    <option value="Finance" label="Finance">Finance</option>
    <option value="Fine Arts" label="Fine Arts">Fine Arts</option>
    <option value="Home Science" label="Home Science">Home Science</option>
    <option value="Law" label="Law">Law</option>
    <option value="Management" label="Management">Management</option>
    <option value="Medicine" label="Medicine">Medicine</option>

    <option value="Nursing/ Health Sciences" label="Nursing/ Health Sciences">Nursing/ Health Sciences</option>
    <option value="Office administration" label="Office administration">Office administration</option>
    <option value="Science" label="Science">Science</option>
    <option value="Shipping" label="Shipping">Shipping</option>
    <option value="Travel &amp; Tourism" label="Travel &amp; Tourism">Travel &amp; Tourism</option>

        </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Working With:</strong></td>
        <td><select name="select8" id="select8">
         <option value="" label="Select" selected="selected">Select</option>
    <option value="Private Company" label="Private Company">Private Company</option>
    <option value="Government / Public Sector" label="Government / Public Sector">Government / Public Sector</option>
    <option value="Defense / Civil Services" label="Defense / Civil Services">Defense / Civil Services</option>
    <option value="Business / Self Employed" label="Business / Self Employed">Business / Self Employed</option>

    <option value="Non Working" label="Non Working">Non Working</option>
        </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Working As:</strong></td>
        <td><select name="select9" id="select9">
        <option value="" label="Select" selected="selected">Select</option>
    <optgroup id="occupation-optgroup-Accounting, Banking &amp; Finance" label="Accounting, Banking &amp; Finance">
    </optgroup>
    <option value="Banking Professional" label="Banking Professional">Banking Professional</option>
    <option value="Chartered Accountant" label="Chartered Accountant">Chartered Accountant</option>

    <option value="Company Secretary" label="Company Secretary">Company Secretary</option>
    <option value="Finance Professional" label="Finance Professional">Finance Professional</option>
    <option value="Investment Professional" label="Investment Professional">Investment Professional</option>
    <option value="Accounting Professional (Others)" label="Accounting Professional (Others)">Accounting Professional (Others)</option>
    <optgroup id="occupation-optgroup-Administration &amp; HR" label="Administration &amp; HR">
    </optgroup>
    <option value="Admin Professional" label="Admin Professional">Admin Professional</option>

    <option value="Human Resources Professional" label="Human Resources Professional">Human Resources Professional</option>
    <optgroup id="occupation-optgroup-Advertising, Media &amp; Entertainment" label="Advertising, Media &amp; Entertainment">
    </optgroup>
    <option value="Actor" label="Actor">Actor</option>
    <option value="Advertising Professional" label="Advertising Professional">Advertising Professional</option>
    <option value="Entertainment Professional" label="Entertainment Professional">Entertainment Professional</option>
    <option value="Event Manager" label="Event Manager">Event Manager</option>

    <option value="Journalist" label="Journalist">Journalist</option>
    <option value="Media Professional" label="Media Professional">Media Professional</option>
    <option value="Public Relations Professional" label="Public Relations Professional">Public Relations Professional</option>
    <optgroup id="occupation-optgroup-Agriculture" label="Agriculture">
    </optgroup>
    <option value="Farming" label="Farming">Farming</option>
    <option value="Horticulturist" label="Horticulturist">Horticulturist</option>

    <option value="Agricultural Professional (Others)" label="Agricultural Professional (Others)">Agricultural Professional (Others)</option>
    <optgroup id="occupation-optgroup-Airline &amp; Aviation" label="Airline &amp; Aviation">
    </optgroup>
    <option value="Air Hostess / Flight Attendant" label="Air Hostess / Flight Attendant">Air Hostess / Flight Attendant</option>
    <option value="Pilot / Co-Pilot" label="Pilot / Co-Pilot">Pilot / Co-Pilot</option>
    <option value="Other Airline Professional" label="Other Airline Professional">Other Airline Professional</option>
    <optgroup id="occupation-optgroup-Architecture &amp; Design" label="Architecture &amp; Design">

    </optgroup>
    <option value="Architect" label="Architect">Architect</option>
    <option value="Interior Designer" label="Interior Designer">Interior Designer</option>
    <option value="Landscape Architect" label="Landscape Architect">Landscape Architect</option>
    <optgroup id="occupation-optgroup-Artists, Animators &amp; Web Designers" label="Artists, Animators &amp; Web Designers">
    </optgroup>
    <option value="Animator" label="Animator">Animator</option>

    <option value="Commercial Artist" label="Commercial Artist">Commercial Artist</option>
    <option value="Web / UX Designers" label="Web / UX Designers">Web / UX Designers</option>
    <option value="Artist (Others)" label="Artist (Others)">Artist (Others)</option>
    <optgroup id="occupation-optgroup-Beauty, Fashion &amp; Jewellery Designers" label="Beauty, Fashion &amp; Jewellery Designers">
    </optgroup>
    <option value="Beautician" label="Beautician">Beautician</option>
    <option value="Fashion Designer" label="Fashion Designer">Fashion Designer</option>

    <option value="Hairstylist" label="Hairstylist">Hairstylist</option>
    <option value="Jewellery Designer" label="Jewellery Designer">Jewellery Designer</option>
    <option value="Designer (Others)" label="Designer (Others)">Designer (Others)</option>
    <optgroup id="occupation-optgroup-BPO, KPO, &amp; Customer Support" label="BPO, KPO, &amp; Customer Support">
    </optgroup>
    <option value="Customer Support / BPO / KPO Professional" label="Customer Support / BPO / KPO Professional">Customer Support / BPO / KPO Professional</option>
    <optgroup id="occupation-optgroup-Civil Services / Law Enforcement" label="Civil Services / Law Enforcement">

    </optgroup>
    <option value="IAS / IRS / IES / IFS" label="IAS / IRS / IES / IFS">IAS / IRS / IES / IFS</option>
    <option value="Indian Police Services (IPS)" label="Indian Police Services (IPS)">Indian Police Services (IPS)</option>
    <option value="Law Enforcement Employee (Others)" label="Law Enforcement Employee (Others)">Law Enforcement Employee (Others)</option>
    <optgroup id="occupation-optgroup-Defense" label="Defense">
    </optgroup>
    <option value="Airforce" label="Airforce">Airforce</option>

    <option value="Army" label="Army">Army</option>
    <option value="Navy" label="Navy">Navy</option>
    <option value="Defense Services (Others)" label="Defense Services (Others)">Defense Services (Others)</option>
    <optgroup id="occupation-optgroup-Education &amp; Training" label="Education &amp; Training">
    </optgroup>
    <option value="Lecturer" label="Lecturer">Lecturer</option>
    <option value="Professor" label="Professor">Professor</option>

    <option value="Research Assistant" label="Research Assistant">Research Assistant</option>
    <option value="Research Scholar" label="Research Scholar">Research Scholar</option>
    <option value="Teacher" label="Teacher">Teacher</option>
    <option value="Training Professional (Others)" label="Training Professional (Others)">Training Professional (Others)</option>
    <optgroup id="occupation-optgroup-Engineering" label="Engineering">
    </optgroup>
    <option value="Civil Engineer" label="Civil Engineer">Civil Engineer</option>

    <option value="Electronics / Telecom Engineer" label="Electronics / Telecom Engineer">Electronics / Telecom Engineer</option>
    <option value="Mechanical / Production Engineer" label="Mechanical / Production Engineer">Mechanical / Production Engineer</option>
    <option value="Non IT Engineer (Others)" label="Non IT Engineer (Others)">Non IT Engineer (Others)</option>
    <optgroup id="occupation-optgroup-Hotel &amp; Hospitality" label="Hotel &amp; Hospitality">
    </optgroup>
    <option value="Chef / Sommelier / Food Critic" label="Chef / Sommelier / Food Critic">Chef / Sommelier / Food Critic</option>
    <option value="Catering Professional" label="Catering Professional">Catering Professional</option>

    <option value="Hotel &amp; Hospitality Professional (Others)" label="Hotel &amp; Hospitality Professional (Others)">Hotel &amp; Hospitality Professional (Others)</option>
    <optgroup id="occupation-optgroup-IT &amp; Software Engineering" label="IT &amp; Software Engineering">
    </optgroup>
    <option value="Software Developer / Programmer" label="Software Developer / Programmer">Software Developer / Programmer</option>
    <option value="Software Consultant" label="Software Consultant">Software Consultant</option>
    <option value="Hardware &amp; Networking professional" label="Hardware &amp; Networking professional">Hardware &amp; Networking professional</option>

    <option value="Software Professional (Others)" label="Software Professional (Others)">Software Professional (Others)</option>
    <optgroup id="occupation-optgroup-Legal" label="Legal">
    </optgroup>
    <option value="Lawyer" label="Lawyer">Lawyer</option>
    <option value="Legal Assistant" label="Legal Assistant">Legal Assistant</option>
    <option value="Legal Professional (Others)" label="Legal Professional (Others)">Legal Professional (Others)</option>
    <optgroup id="occupation-optgroup-Medical &amp; Healthcare" label="Medical &amp; Healthcare">

    </optgroup>
    <option value="Dentist" label="Dentist">Dentist</option>
    <option value="Doctor" label="Doctor">Doctor</option>
    <option value="Medical Transcriptionist" label="Medical Transcriptionist">Medical Transcriptionist</option>
    <option value="Nurse" label="Nurse">Nurse</option>
    <option value="Pharmacist" label="Pharmacist">Pharmacist</option>

    <option value="Physician Assistant" label="Physician Assistant">Physician Assistant</option>
    <option value="Physiotherapist / Occupational Therapist" label="Physiotherapist / Occupational Therapist">Physiotherapist / Occupational Therapist</option>
    <option value="Psychologist" label="Psychologist">Psychologist</option>
    <option value="Surgeon" label="Surgeon">Surgeon</option>
    <option value="Veterinary Doctor" label="Veterinary Doctor">Veterinary Doctor</option>
    <option value="Therapist (Others)" label="Therapist (Others)">Therapist (Others)</option>

    <option value="Medical / Healthcare Professional (Others)" label="Medical / Healthcare Professional (Others)">Medical / Healthcare Professional (Others)</option>
    <optgroup id="occupation-optgroup-Merchant Navy" label="Merchant Navy">
    </optgroup>
    <option value="Merchant Naval Officer" label="Merchant Naval Officer">Merchant Naval Officer</option>
    <option value="Mariner" label="Mariner">Mariner</option>
    <optgroup id="occupation-optgroup-Sales &amp; Marketing" label="Sales &amp; Marketing">
    </optgroup>

    <option value="Marketing Professional" label="Marketing Professional">Marketing Professional</option>
    <option value="Sales Professional" label="Sales Professional">Sales Professional</option>
    <optgroup id="occupation-optgroup-Science" label="Science">
    </optgroup>
    <option value="Biologist / Botanist" label="Biologist / Botanist">Biologist / Botanist</option>
    <option value="Physicist" label="Physicist">Physicist</option>
    <option value="Science Professional (Others)" label="Science Professional (Others)">Science Professional (Others)</option>

    <optgroup id="occupation-optgroup-Corporate Professionals" label="Corporate Professionals">
    </optgroup>
    <option value="CxO / Chairman / Director / President" label="CxO / Chairman / Director / President">CxO / Chairman / Director / President</option>
    <option value="VP / AVP / GM / DGM" label="VP / AVP / GM / DGM">VP / AVP / GM / DGM</option>
    <option value="Sr. Manager / Manager" label="Sr. Manager / Manager">Sr. Manager / Manager</option>
    <option value="Consultant / Supervisor / Team Leads" label="Consultant / Supervisor / Team Leads">Consultant / Supervisor / Team Leads</option>
    <option value="Team Member / Staff" label="Team Member / Staff">Team Member / Staff</option>

    <optgroup id="occupation-optgroup-Others" label="Others">
    </optgroup>
    <option value="Agent / Broker / Trader / Contractor" label="Agent / Broker / Trader / Contractor">Agent / Broker / Trader / Contractor</option>
    <option value="Business Owner / Entrepreneur" label="Business Owner / Entrepreneur">Business Owner / Entrepreneur</option>
    <option value="Politician" label="Politician">Politician</option>
    <option value="Social Worker / Volunteer / NGO" label="Social Worker / Volunteer / NGO">Social Worker / Volunteer / NGO</option>
    <option value="Sportsman" label="Sportsman">Sportsman</option>

    <option value="Travel &amp; Transport Professional" label="Travel &amp; Transport Professional">Travel &amp; Transport Professional</option>
    <option value="Writer" label="Writer">Writer</option>
    <optgroup id="occupation-optgroup-Non Working" label="Non Working">
    </optgroup>
    <option value="Student" label="Student">Student</option>
    <option value="Retired" label="Retired">Retired</option>

    <option value="Not working" label="Not working">Not working</option>
        </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>Annual Income:</strong></td>
        <td><select name="select10" id="select10">
        <option value="" label="Select" selected="selected">Select</option>
    <option value="Not applicable" label="Not applicable">Not applicable</option>

    <option value="Less than Rs 50 thousand" label="Less than Rs 50 thousand">Less than Rs 50 thousand</option>
    <option value="Rs 50 thousand to 1 lakh" label="Rs 50 thousand to 1 lakh">Rs 50 thousand to 1 lakh</option>
    <option value="Rs 1 lakh to 2 lakhs" label="Rs 1 lakh to 2 lakhs">Rs 1 lakh to 2 lakhs</option>
    <option value="Rs 2 lakhs to 3 lakhs" label="Rs 2 lakhs to 3 lakhs">Rs 2 lakhs to 3 lakhs</option>
    <option value="Rs 3 lakhs to 4 lakhs" label="Rs 3 lakhs to 4 lakhs">Rs 3 lakhs to 4 lakhs</option>
    <option value="Rs 4 lakhs to 5 lakhs" label="Rs 4 lakhs to 5 lakhs">Rs 4 lakhs to 5 lakhs</option>

    <option value="Rs 5 lakhs to 7 lakhs" label="Rs 5 lakhs to 7 lakhs">Rs 5 lakhs to 7 lakhs</option>
    <option value="Rs 7 lakhs to 10 lakhs" label="Rs 7 lakhs to 10 lakhs">Rs 7 lakhs to 10 lakhs</option>
    <option value="Rs 10 lakhs to 15 lakhs" label="Rs 10 lakhs to 15 lakhs">Rs 10 lakhs to 15 lakhs</option>
    <option value="Rs 15 lakhs to 20 lakhs" label="Rs 15 lakhs to 20 lakhs">Rs 15 lakhs to 20 lakhs</option>
    <option value="Rs 20 lakhs to 30 lakhs" label="Rs 20 lakhs to 30 lakhs">Rs 20 lakhs to 30 lakhs</option>
    <option value="Rs 30 lakhs and above" label="Rs 30 lakhs and above">Rs 30 lakhs and above</option>

    <option value="Dont want to specify" label="Dont want to specify">Dont want to specify</option>
        </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="24" colspan="3">____________________________________________________________________________________________________________________________________________________________________</td>
        </tr>
      <tr>
        <td><strong>Descrive Yourself:</strong></td>
        <td><textarea name="textarea" id="textarea" cols="75" rows="5"></textarea></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="21">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="26">&nbsp;</td>
        <td><input type="submit" name="button" id="button" value="Submit"></td>
        <td>&nbsp;</td>
      </tr>
    </table></form></td>
      </tr>
      
    </table></td>
  </tr>
  <br>
    </tr>
  
</body>
</html>
