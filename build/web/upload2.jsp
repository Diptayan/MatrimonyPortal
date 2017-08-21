<%-- 
    Document   : upload2
    Created on : 6 Jul, 2012, 2:16:37 PM
    Author     : Diptayan
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ page import="java.io.*" %>
    <%String email=session.getAttribute("email").toString(); 
  // the directory where the uploaded file will be saved.
  String savePath = "C:\\Documents and Settings\\Anwit\\My Documents\\NetBeansProjects\\MatrimonyPortal_FINAL4\\web\\dp\\";

  String filename = "";

  ServletInputStream in = request.getInputStream();

  byte[] line = new byte[128];
  int i = in.readLine(line, 0, 128);
  int boundaryLength = i - 2;
  String boundary = new String(line, 0, boundaryLength); 
  //-2 discards the newline character

  while (i != -1) {
    String newLine = new String(line, 0, i);
    if (newLine.startsWith("Content-Disposition: form-data; name=\"")) {
      String s = new String(line, 0, i-2);
      int pos = s.indexOf("filename=\"");
      if (pos != -1) {
        String filepath = s.substring(pos+10, s.length()-1);
        // Windows browsers include the full path on the client
        // But Linux/Unix and Mac browsers only send the filename
        // test if this is from a Windows browser
        pos = filepath.lastIndexOf("\\");
        if (pos != -1)
          filename = filepath.substring(pos + 1);
        else
          filename = filepath;
      }

      //this is the file content
      i = in.readLine(line, 0, 128);
      i = in.readLine(line, 0, 128);
      // blank line
      i = in.readLine(line, 0, 128);

      ByteArrayOutputStream buffer = new ByteArrayOutputStream();
      newLine = new String(line, 0, i);

      while (i != -1 && !newLine.startsWith(boundary)) {
        // the problem is the last line of the file content
        // contains the new line character.
        // So, we need to check if the current line is
        // the last line.
        buffer.write(line, 0, i);
        i = in.readLine(line, 0, 128);
        newLine = new String(line, 0, i);
      }
      try {
        // save the uploaded file
        RandomAccessFile f = new RandomAccessFile(
          savePath + filename, "rw");
        byte[] bytes = buffer.toByteArray();
        f.write(bytes, 0, bytes.length - 2);
        f.close();
      }
      catch (Exception e) {}
    }
    i = in.readLine(line, 0, 128);
    String fullpath=savePath+filename;
     try{Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                    Connection con = DriverManager.getConnection("Jdbc:Odbc:matrimony_DSN","","");
                    PreparedStatement ps = con.prepareStatement("UPDATE reg3 set photo=? where email=?");
                    ps.setString(1, filename);
                    ps.setString(2, email);
                    int k=ps.executeUpdate();
                    
                    /*PreparedStatement ps2 = con.prepareStatement("UPDATE search set photo=? where email=?");
                    ps2.setString(1, filename);
                    ps2.setString(2, email);
                    ps2.executeUpdate();*/
                    if(k!=0){response.sendRedirect("Partner.jsp");}
     }catch(Exception ex)
     {
         out.println(ex.toString());
     }
  } // end while
%>


<head>
<title>DreamTemplate.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
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
        <td><a href="#"><img src="images/index_04.gif" alt="" width="192" height="80" border="0"></a></td>
        <td><a href="#"><img src="images/index_05.gif" alt="" width="136" height="80" border="0"></a></td>
        <td><a href="#"><img src="images/index_06.gif" alt="" width="130" height="80" border="0"></a></td>
        <td><a href="#"><img src="images/index_07.gif" alt="" width="144" height="80" border="0"></a></td>
        <td><a href="#"><img src="images/index_08.gif" alt="" width="133" height="80" border="0"></a></td>
        <td><a href="#"><img src="images/index_09.gif" alt="" width="265" height="80" border="0"></a></td>
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
