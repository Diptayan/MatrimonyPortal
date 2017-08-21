<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
String msg=request.getParameter("msg");
if(msg!=null && msg.equals("Error!"))
       {
    out.println("<script language='javascript'>");
    out.println("alert('You must Log In to Continue')");
    out.println("</script>");
}
else if(msg!=null && msg.equals("Registered"))
{
     out.println("<script language='javascript'>");
    out.println("alert('You are Already Registered!')");
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
	font-size: 18px;
	font-weight: bold;
	color: #FFFFFF;
}
.style2 {
	font-size: 14px;
	color: #FFFFFF;
}
.style4 {font-size: 12px; color: #FFFFFF; }
.style3 {	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
-->
</style>
<script language="javascript">
			var numericExpression = /^[0-9 + -]+$/;
			var alphaExp = /^[a-z A-Z .]+$/;
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
				else if(c.value!=0)
				{
					alert("You are already registered!");
				}
                                else{
                                    
                                }
			}
			function checkSelect()
			{
				var v = document.getElementById("select");
				if(v.value == "" || v.value == null)
				{
					alert("Select for whom you are making the profile!");
                                            v.focus();
				}
				else
				{
					
				}
			}
			function checkPassword()
			{
				var v = document.getElementById("textfield2");
				if(v.value == "" || v.value == null)
				{
					alert("Password cannot be left blank!");
					v.focus();
				}				
				else
				{
					
				}
			}
			function checkEqual()
			{
				var v1 = document.getElementById("textfield2");
				var v2 = document.getElementById("textfield3");				
				if(v1.value != v2.value)
				{
					alert("Password does not match. Enter again!");
					v2.focus();
				}
				else
				{
					
				}
			}
			function checkName()
			{
				var v = document.getElementById("textfield4");
				if(v.value == "" || v.value == null)
				{
					alert("Name cannot be blank!");
					v.focus();
				}
				else if(!v.value.match(alphaExp))
				{					
					alert("Invalid Name. Enter again!");
					v.focus()
				}
				else
				{
					
				}
			}
			function checkGender()
			{
				var v = document.getElementById("RadioGroup1");
				if(v.value == "" || v.value == null)
				{
					alert("Select a Gender!");
					v.focus();
				}				
				else
				{
					
				}
			}
			function checkDay()
			{
				var v = document.getElementById("select2");
				if(v.value == "" || v.value == null)
				{
					alert("Select your Birth Day!");
					v.focus();
				}
				else
				{
					
				}
			}
			function checkMonth()
			{
				var v = document.getElementById("select3");
				if(v.value == "" || v.value == null)
				{
					alert("Select your Birth Month!");
					v.focus();
				}
				else
				{
					
				}
			}
			function checkYear()
			{
				var v = document.getElementById("select4");
				if(v.value == "" || v.value == null)
				{
					alert("Select your Birth Year!");
					v.focus();
				}
				else
				{
					
				}
			}
			function checkReligion()
			{
				var v = document.getElementById("select5");
				if(v.value == "" || v.value == null)
				{
					alert("Select your Religion!");
					v.focus();
				}
				else
				{
					
				}
			}
			function checkTongue()
			{
				var v = document.getElementById("select6");
				if(v.value == "" || v.value == null)
				{
					alert("Select your Mother Tongue!");
					v.focus();
				}
				else
				{
					
				}
			}
			function checkQuestion()
			{
				var v = document.getElementById("select7");
				if(v.value == "" || v.value == null)
				{
					alert("Select a Security Question!");
					v.focus();
				}
				else
				{
					
				}
			}
			function checkAnswer()
			{
				var v = document.getElementById("textfield5");
				if(v.value == "" || v.value == null)
				{
					alert("Enter an answer to your Security Question!");
					v.focus();
				}
				else
				{
					
				}
			}
           
			function checkSubmit()
			{
				var v1 = document.getElementById("textfield");
				var v2 = document.getElementById("select");
				var v3 = document.getElementById("textfield2");
				var v4 = document.getElementById("textfield3");
				var v5 = document.getElementById("textfield4");
				var v6 = document.getElementById("RadioGroup1");
				var v7 = document.getElementById("select2");
				var v8 = document.getElementById("select3");
				var v9 = document.getElementById("select4");
				var v10 = document.getElementById("select5");
				var v11 = document.getElementById("select6");
				var v12 = document.getElementById("select7");
				var v13 = document.getElementById("textfield5");
				
				if(v1.value == "" || v1.value == null || v2.value == "" || v2.value == null || v3.value == "" || v3.value == null || v4.value == "" || v4.value == null || v5.value == "" || v5.value == null || v6.value == "" || v6.value == null || v7.value == "" || v7.value == null || v8.value == "" || v8.value == null || v9.value == "" || v9.value == null || v10.value == "" || v10.value == null || v11.value == "" || v11.value == null || v12.value == "" || v12.value == null || v13.value == "" || v13.value == null)
				{
                   alert("Please enter the required fields!");
				   return false
				   
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
    <td><img src="images/index_10.gif" width="1000" height="59" alt=""></td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#4C0805"><table width="100%" border="0" cellspacing="10" cellpadding="0">
      <tr>
        <td width="34%"><table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>
            <td width="7%" rowspan="2"><img src="images/index_12.jpg" width="97" height="97" alt=""></td>
            <td width="93%"><strong class="broun-text-regular">It helped me a lot! :)</strong><br>
              Starting from searching for my partner to my wedding, it helped me a lot to arrange my marriage.</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table></td>
        <td width="33%"><table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>
            <td width="7%" rowspan="2"><img src="images/index_14.jpg" width="97" height="97" alt=""></td>
            <td width="93%"><strong class="broun-text-regular">Aakash and Shipa tie the knot!</strong><br> 
              My son got married last month. This portal guided me to select my sons bride.  I am gratefull. 
</td>
          </tr>
          <tr>
            <td><a href="#"></a></td>
          </tr>
        </table></td>
        <td width="33%"><table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>
            <td width="7%" rowspan="2"><img src="images/index_16.jpg" width="96" height="97" alt=""></td>
            <td width="93%"><strong class="broun-text-regular">Awesome Portal!</strong><br> 
              Got married last month. Yippie. New World, new people, new place. New me. Thank you. :)
</td>
          </tr>
          <tr>
            <td><a href="#"></a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/index_25.gif" width="1000" height="57" alt=""></td>
  </tr>
  <tr>
    <td bgcolor="#3A0604"><table width="100%" border="0" cellspacing="10" cellpadding="0">
      <tr>
        <td width="50%" valign="top"><h4>&nbsp;</h4>
          <h3><strong>We are here...</strong></h3>
          <h3><strong> The Basic problem in searching a good life partner in this world is the times spending and the travelling cost effective. This project (Online Matrimonial System)is a useful website for a person of any religion who wishes to find a suitable life partner for himself\herself.</strong></h3>
          <h3>&nbsp;</h3>
          <h3><strong><br>
            This website is very useful as it provides a fast searching of numerous<br>
            suitable profiles. He/she can create his/her profile and can communicate with the existing members of site . Also since it will be available through internet it will be possible for the user to see their profile anywhere.</strong></h3>
          <h3>&nbsp;</h3>
          <h3><strong>The ONLINE MATRIMONIAL SYSTEM are growing as the internet<br>
            emerges as the best Technology which provides a fast and efficient access to any information about anything. Difficulty in Keeping the details of each user and their partners, delay in sending messages to them and spending so much money for</strong> it can be solved by this.</h3></td>
        <td width="20%" valign="top"><table width="30%" height="106" border="0" cellpadding="0" cellspacing="10">
        </table>
		
            <form method="POST" action="index_servlet" onSubmit="return checkSubmit()">	
		  <table width="484" border="0" cellspacing="1" cellpadding="1">
            <tr>
              <td width="472" bordercolor="#330000"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="31" colspan="4"><div align="center"><span class="style1">Register Here! </span></div></td>
                  </tr>
                <tr>
                  <td width="40" height="31">&nbsp;</td>
                  <td width="97"><span class="style4">Email:</span></td>
                  <td width="291">
                    <input type="text" name="textfield" id="textfield" onBlur="checkEmail()">                   </td>
                  <td width="44">&nbsp;</td>
                </tr>
                <tr>
                  <td height="29">&nbsp;</td>
                  <td class="style4">Profile For: </td>
                  <td width="291">
				  <select name="select" size="1" id="select" onBlur="checkSelect()">
				  <option value="" selected>Select</option>
					<option value="Self">Self</option>
					<option value="Son">Son</option>
					<option value="Daughter">Daughter</option>
					<option value="Brother">Brother</option>
					<option value="Sister">Sister</option>
					<option value="Friend">Friend</option>
					<option value="Relative">Relative</option>
                    </select>                  </td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="29">&nbsp;</td>
                  <td class="style4">Password:</td>
                  <td><input type="password" name="textfield2" id="textfield2" onBlur="checkPassword()"></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="29">&nbsp;</td>
                  <td><span class="style4">Confirm Password:</span> </td>
                  <td><input type="password" name="textfield3" id="textfield3" onBlur="checkEqual()"></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="29">&nbsp;</td>
                  <td class="style4">Name:</td>
                  <td><input type="text" name="textfield4" id="textfield4" onBlur="checkName()">                    </td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="29">&nbsp;</td>
                  <td class="style4">Gender:</td>
                  <td>
                    <p>
                      <label>
                        <input type="radio" name="RadioGroup1" value="Male" id="RadioGroup1" onBlur="checkGender()">
                        <font color="#FFFFFF">Male</font></label>
                      <label>
                        <input type="radio" name="RadioGroup1" value="Female" id="RadioGroup1" onBlur="checkGender()">
                        <font color="#FFFFFF">Female</font> </label>
                      <br></p>                  </td>
                  <td>&nbsp;</td>
                </tr>
                
                <tr>
                  <td height="29">&nbsp;</td>
                  <td class="style4">DOB:</td>
                  <td>
                    <select name="select2" id="select2" onBlur="checkDay()">
					<option selected="" value="">Day</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
                    </select> <select name="select3" id="select3" onBlur="checkMonth()">
					<option selected="" value="">Month</option>				  
<OPTION VALUE=01>Jan</OPTION>				  
<OPTION VALUE=02>Feb</OPTION>
<OPTION VALUE=03>Mar</OPTION>
<OPTION VALUE=04>Apr</OPTION>
<OPTION VALUE=05>May</OPTION>
<OPTION VALUE=06>Jun</OPTION>
<OPTION VALUE=07>Jul</OPTION>
<OPTION VALUE=08>Aug</OPTION>
<OPTION VALUE=09>Sep</OPTION>
<OPTION VALUE=10>Oct</OPTION>
<OPTION VALUE=11>Nov</OPTION>
<OPTION VALUE=12>Dec</OPTION>
                    </select> <select name="select4" id="select4" onBlur="checkYear()"><br>
<option value="" selected>Year</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option>

                    </select></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="29">&nbsp;</td>
                  <td class="style4">Religion:</td>
                  <td><select name="select5" size="1" id="select5" onBlur="checkReligion()">
				  <option value="" selected="">Select</option>
					<option value="Hindu" >Hindu</option><option value="Muslim" >Muslim</option><option value="Christian" >Christian</option><option value="Sikh" >Sikh</option><option value="Parsi" >Parsi</option><option value="Jain" >Jain</option><option value="Buddhist" >Buddhist</option><option value="Jewish" >Jewish</option><option value="No Religion" >No Religion</option><option value="Spiritual - not religious" >Spiritual</option><option value="Other" >Other</option>
                  </select></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="29">&nbsp;</td>
                  <td class="style4">Mother Tounge: </td>
                  <td><select name="select6" size="1" id="select6" onBlur="checkTongue()">
				  					<option value="" selected>Select</option>
<optgroup label="Frequently Used" style="font: bold 12px verdana;" ></optgroup><option value="Assamese">Assamese</option>
<option value="Bengali">Bengali</option>
<option value="English">English</option>
<option value="Gujarati">Gujarati</option>
<option value="Hindi">Hindi</option>
<option value="Kannada">Kannada</option>
<option value="Konkani">Konkani</option>
<option value="Malayalam">Malayalam</option>
<option value="Marathi">Marathi</option>
<option value="Marwari">Marwari</option>
<option value="Oriya">Oriya</option>
<option value="Punjabi">Punjabi</option>
<option value="Sindhi">Sindhi</option>
<option value="Tamil">Tamil</option>
<option value="Telugu">Telugu</option>
<option value="Urdu">Urdu</option>
<optgroup label="All Mother Tongues" style="none repeat scroll 0%;font:bold 12px verdana;" ></optgroup><option value="Aka">Aka</option>
<option value="Arabic">Arabic</option>
<option value="Arunachali">Arunachali</option>
<option value="Assamese">Assamese</option>
<option value="Awadhi">Awadhi</option>
<option value="Baluchi">Baluchi</option>
<option value="Bengali">Bengali</option>
<option value="Bhojpuri">Bhojpuri</option>
<option value="Bhutia">Bhutia</option>
<option value="Brahui">Brahui</option>
<option value="Brij">Brij</option>
<option value="Burmese">Burmese</option>
<option value="Chattisgarhi">Chattisgarhi</option>
<option value="Chinese">Chinese</option>
<option value="Coorgi">Coorgi</option>
<option value="Dogri">Dogri</option>
<option value="English">English</option>
<option value="French">French</option>
<option value="Garhwali">Garhwali</option>
<option value="Garo">Garo</option>
<option value="Gujarati">Gujarati</option>
<option value="Haryanavi">Haryanavi</option>
<option value="Himachali/Pahari">Himachali/Pahari</option>
<option value="Hindi">Hindi</option>
<option value="Hindko">Hindko</option>
<option value="Kakbarak">Kakbarak</option>
<option value="Kanauji">Kanauji</option>
<option value="Kannada">Kannada</option>
<option value="Kashmiri">Kashmiri</option>
<option value="Khandesi">Khandesi</option>
<option value="Khasi">Khasi</option>
<option value="Konkani">Konkani</option>
<option value="Koshali">Koshali</option>
<option value="Kumaoni">Kumaoni</option>
<option value="Kutchi">Kutchi</option>
<option value="Ladakhi">Ladakhi</option>
<option value="Lepcha">Lepcha</option>
<option value="Magahi">Magahi</option>
<option value="Maithili">Maithili</option>
<option value="Malay">Malay</option>
<option value="Malayalam">Malayalam</option>
<option value="Manipuri">Manipuri</option>
<option value="Marathi">Marathi</option>
<option value="Marwari">Marwari</option>
<option value="Miji">Miji</option>
<option value="Mizo">Mizo</option>
<option value="Monpa">Monpa</option>
<option value="Nepali">Nepali</option>
<option value="Oriya">Oriya</option>
<option value="Pashto">Pashto</option>
<option value="Persian">Persian</option>
<option value="Punjabi">Punjabi</option>
<option value="Rajasthani">Rajasthani</option>
<option value="Russian">Russian</option>
<option value="Sanskrit">Sanskrit</option>
<option value="Santhali">Santhali</option>
<option value="Seraiki">Seraiki</option>
<option value="Sindhi">Sindhi</option>
<option value="Sinhala">Sinhala</option>
<option value="Sourashtra">Sourashtra</option>
<option value="Spanish">Spanish</option>
<option value="Swedish">Swedish</option>
<option value="Tagalog">Tagalog</option>
<option value="Tamil">Tamil</option>
<option value="Telugu">Telugu</option>
<option value="Tulu">Tulu</option>
<option value="Urdu">Urdu</option>
<option value="Other">Other</option>

                  </select></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="29">&nbsp;</td>
                  <td class="style4">Security Question: </td>
                  <td><select name="select7" size="1" id="select7" onBlur="checkQuestion()">
				  <option value="" SELECTED >- Select One -</option>

<option value="What town were you born in?" >What town were you born in?</option>                   
<option value="What is the name of your bestfriend?" >What is the name of your bestfriend?</option>                  
<option value="What was the name of your primary school?" >What was the name of your primary school?</option>                   
<option value="What town was your mother born in?" >What town was your mother born in?</option>                   
<option value="What is your favourite food?" >What is your favourite food?</option>                   
<option value="Who is your favourite author?" >Who is your favourite author?</option>                   
<option value="Who is your favourite sportsman?" >Who is your favourite sportsman?</option>                   
<option value="What is your favourite game?" >What is your favourite game?</option>                   

                  </select></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="29">&nbsp;</td>
                  <td class="style4">Answer:</td>
                  <td><input type="text" name="textfield5" id="textfield5" onBlur="checkAnswer()"></td>
                  <td>&nbsp;</td>
                </tr>
                
                <tr>
                  <td height="35">&nbsp;</td>
                  <td colspan="2"><div align="center">
                     <input type="submit" name="Submit" value="Submit">
                     </div></td>
                  <td>&nbsp;</td>
                </tr>
              </table></td>
            </form>
        </tr>
          </table></td>
  </tr>
</table></td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="131" background="images/index_50.gif">&nbsp;</td>
  </tr>
</table>
</body>
</html>