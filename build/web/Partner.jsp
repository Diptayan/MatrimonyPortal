<%-- 
    Document   : Partner
    Created on : Jul 4, 2012, 11:13:37 AM
    Author     : abhik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String email=session.getAttribute("email").toString();
%>
<!DOCTYPE html>
<html>
<head>
<title>DreamTemplate.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">

<script language="javascript">
                        function checkAge1()
			{
				var v = document.getElementById("select");
                               
				if(v.value == "" || v.value == null) 
				{
					alert("Select an age!");
					
				}
                         }
                        function checkAge2()
			{
				var v = document.getElementById("select2");
                                var v2 = document.getElementById("select");
				if(v.value == "" || v.value == null) 
				{
					alert("Select an age!");
					
				}
                                                               
				else if (v.value<v2.value)
				{
					alert("Upper limit must be more than the Lower Limit");
					v2.focus()
				}
			}

 			function checkHeight1()
			{
				var v = document.getElementById("select3");
				if(v.value == "" || v.value == null)
				{
					alert("Select a Height!");
					
                                }
			}
                        function checkHeight2()
			{
				var v = document.getElementById("select4");
                                var v2 = document.getElementById("select3");
				if(v.value == "" || v.value == null)
				{
					alert("Select a Height!");
					
				}  
				else if (v.value<v2.value)
				{
					alert("Upper limit must be more than the Lower Limit");
					v2.focus()
				}
			}
			 function checkEducation()
			{
				var v = document.getElementById("select9");
				if(v.value == "" || v.value == null)
				{
					alert("Select an Education Level!");
					
				}
			}
			function checkSubmit()
			{
				var v1 = document.getElementById("select");
				var v2 = document.getElementById("select2");
				var v3 = document.getElementById("select3");
				var v4 = document.getElementById("select4");
				var v5 = document.getElementById("select9");
				
				if(v1.value == "" || v1.value == null || v2.value == "" || v2.value == null || v3.value == "" || v3.value == null || v4.value == "" || v4.value == null || v5.value == "" || v5.value == null)
				{
					alert("Please enter the required fields!");
					return false;
					
				}
				else{return true;}
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
    </table></td>
  </tr>
  <tr>
    <td>
    <form method="POST" action="partner_servlet" onSubmit="return checkSubmit()">
    <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
        <br>
  <br>
  <br>
  <br>
  <br>
    <tr>
      <td width="46">&nbsp;</td>
      <td colspan="3" style=" font-size:x-large; color: #FF0";><h4>Partner Preference: &nbsp;</h4></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="3" >&nbsp;</td>
      <td width="7">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="3" style="font-size:large; color: #060; ";><h5>Tell Us What Would You Like In Your Partner-&nbsp;</h5></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td width="283">&nbsp;</td>
      <td width="411">&nbsp;</td>
      <td width="253">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><input type="hidden" name="hiddenField" id="hiddenField" value=<%=email%>></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium"><h5><span class="b1">Age In Years:</span>&nbsp;</h5></td>
      <td>&nbsp;
        
          <label for="select"><strong>From</strong></label>
          <select name="select" id="select" onBlur="checkAge1()">
            <option value="" selected>Select</option>
            <option>15</option>
            <option>16</option>
            <option>17</option>
            <option>18</option>
            <option>19</option>
            <option>20</option>
            <option>21</option>
            <option>22</option>
            <option>23</option>
            <option>24</option>
            <option>25</option>
            <option>26</option>
            <option>27</option>
            <option>28</option>
            <option>29</option>
            <option>30</option>
            <option>31</option>
            <option>32 </option>
            <option>33</option>
            <option>34</option>
            <option>35</option>
            <option>36</option>
            <option>37</option>
            <option>38</option>
            <option>39</option>
            <option>40</option>
            <option>41</option>
            <option>42</option>
            <option>43</option>
            <option>44</option>
            <option>45</option>
            <option>46</option>
            <option>47</option>
            <option>48</option>
            <option>49</option>
            <option>50</option>
            <option>51</option>
            <option>52</option>
            <option>53</option>
            <option>54</option>
            <option>55</option>
            <option>56</option>
            <option>57</option>
            <option>58</option>
            <option>59</option>
            <option>60</option>
          </select>
          <label for="select2"><strong>To</strong></label>
          <select name="select2" id="select2" onBlur="checkAge2()">
            <option value="" selected> Select</option>
            <option>21</option>
            <option>22</option>
            <option>23</option>
            <option>24</option>
            <option>25</option>
            <option>26</option>
            <option>27</option>
            <option>28</option>
            <option>29</option>
            <option>30</option>
            <option>31</option>
            <option>32</option>
            <option>33</option>
            <option>34</option>
            <option>35</option>
            <option>36</option>
            <option>37</option>
            <option>38</option>
            <option>39</option>
            <option>40</option>
            <option>41</option>
            <option>42</option>
            <option>43</option>
            <option>44</option>
            <option>45</option>
            <option>46</option>
            <option>47</option>
            <option>48</option>
            <option>49</option>
            <option>50</option>
            <option>51</option>
            <option>52</option>
            <option>53</option>
            <option>54</option>
            <option>55</option>
            <option>56</option>
            <option>57</option>
            <option>58</option>
            <option>59</option>
            <option>60</option>
          </select>
      </td>
      <td rowspan="12"><img src="images/hands.jpg" width="486" height="392"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium"><h5>Height:&nbsp;</h5></td>
      <td>
        <label for="select3"><strong>From</strong></label>
        <select name="select3" id="select3" onBlur="checkHeight1()">
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

        </select>
        <strong>
        <label for="select4">To</label>
        </strong>
        <select name="select4" id="select4" onBlur="checkHeight2()">
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

        </select>
      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium"><h5>&nbsp;</h5></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium"><h5>Religion:&nbsp;</h5></td>
      <td>
        <label for="select5"></label>
        <select name="select5" id="select5">
          <option value="all" selected>Doesn't Matter</option>
       	<option value="Hindu" >Hindu</option><option value="Muslim" >Muslim</option><option value="Christian" >Christian</option><option value="Sikh" >Sikh</option><option value="Parsi" >Parsi</option><option value="Jain" >Jain</option><option value="Buddhist" >Buddhist</option><option value="Jewish" >Jewish</option><option value="No Religion" >No Religion</option><option value="Spiritual - not religious" >Spiritual</option><option value="Other" >Other</option>
        </select>
      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium"><h5>&nbsp;</h5></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium"> <h5>Mother Tongue:&nbsp;</h5></td>
      <td>
        <label for="select6"></label>
        <select name="select6" id="select6">
          <option value="all" selected>Doesn't Matter</option>
          <option>English</option>
          <option>Hindi</option>
          <option>Bengali</option>
          <option>Gujrati</option>
          <option>Assamese</option>
          <option>Kanada</option>
          <option>Malayam</option>
          <option>Marathi</option>
          <option>Marawari</option>
          <option>Oriya</option>
          <option>Punjabi</option>
          <option>Sindhi</option>
          <option>Tamil</option>
          <option>Telegu</option>
          <option>Urdu</option>
          <option>Vojpuri</option>
          <option>Himachali</option>
          <option>Others</option>
        </select>
      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium"><h5>&nbsp;</h5></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium"> <h5>Caste:&nbsp;</h5></td>
      <td>
        <label for="select7"></label>
        <select name="select7" id="select7">
          <option value="all" label="Doesn't Matter" selected="selected">Doesn't Matter</option>
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
          
          </select>
        </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><h5>&nbsp;</h5></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span style="font-size:medium">
      <h3>Education:</h3></td>
      <td>
        <label for="select9"></label>
        <select name="select9" id="select9" onBlur="checkEducation()">
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
        </select>
      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="36">&nbsp;</td>
      <td style="font-size:medium">Diet:&nbsp;</td>
      <td colspan="2">
        <p>
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
        </p>
      </td>
    </tr>
    <tr>
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
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="3" rowspan="2" align="center" style=" alignment-adjust:middle"> 
           <input name="submit" type="submit" class="black-text-regular" id="submit" value="Save &amp; Continue" >
        </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td style="font-size:medium">&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
</table> </form>
    <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>