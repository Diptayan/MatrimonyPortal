/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Debanshu
 */
public class index_servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String email=request.getParameter("textfield");
        String password=request.getParameter("textfield2");
        String name=request.getParameter("textfield4");
        String gender=request.getParameter("RadioGroup1");
        String dd=request.getParameter("select2");
        String mm=request.getParameter("select3");       
        String yyyy=request.getParameter("select4");
        String religion=request.getParameter("select5");
        String tongue=request.getParameter("select6");
        String secq=request.getParameter("select7");
        String answer=request.getParameter("textfield5");
        ResultSet rs1=null;
        int c=0;
try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:matrimony_DSN", "", "");
        PreparedStatement ps1 = con.prepareStatement("SELECT * FROM reg1 WHERE email=?");
         ps1.setString(1, email);
         rs1 = ps1.executeQuery();
          while(rs1.next())
            {
             
             c++;
             }    
        
    }
      catch(Exception ex){
        out.println(ex.toString());
    }
if(c!=0)
{
    response.sendRedirect("index.jsp?msg=Registered");
}
else{
                try {
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
              Connection con=DriverManager.getConnection("jdbc:odbc:matrimony_DSN","","");
              PreparedStatement ps=con.prepareStatement("INSERT INTO reg1 VALUES(?,?,?,?,?,?,?,?,?,?,?)");
              ps.setString(1,email);
              ps.setString(2,password);
              ps.setString(3,name);
              ps.setString(4,gender);
              ps.setString(5,dd);
              ps.setString(6,mm);
              ps.setString(7,yyyy);
              ps.setString(8,religion);
              ps.setString(9,tongue);
              ps.setString(10,secq);
              ps.setString(11,answer);
              int i=ps.executeUpdate();
                      if(i!=0)
                      {
                          HttpSession session=request.getSession(true);
                          session.setAttribute("email", email);
                          PreparedStatement ps3=con.prepareStatement("INSERT INTO search VALUES(?,?,?,?,?,?,?,?,?,?)");
                          ps3.setString(1,email);
                          ps3.setString(2,gender);
                          ps3.setInt(3,Integer.parseInt(yyyy));
                          ps3.setString(4,religion);
                          ps3.setString(5,tongue);
                          ps3.setString(6,"");
                          ps3.setString(7,"");
                          ps3.setString(8,"");
                          ps3.setString(9,"");
                          ps3.setString(10,name);
                          
                          
                          ps3.executeUpdate();
                                                    
                          response.sendRedirect("register2.jsp");
                      }
        } 
        catch(Exception e){
            out.println(e.toString());
        }
        finally {            
            out.close();
        }
    }
   }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
