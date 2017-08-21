/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Debanshu
 */
public class register2_servlet extends HttpServlet {

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
        String email=request.getParameter("textfield3");
        String marital=request.getParameter("select");
        String height=request.getParameter("select2");
        String caste=request.getParameter("select3");
        String subcaste=request.getParameter("textfield");
        String diet=request.getParameter("RadioGroup1");
        String smoke=request.getParameter("RadioGroup2");       
        String drink=request.getParameter("RadioGroup3");
        String value=request.getParameter("RadioGroup4");
        String complexion=request.getParameter("RadioGroup5");
        String bodytype=request.getParameter("RadioGroup6");
        //String tongue=request.getParameter("select6");
        //String gender=request.getParameter("RadioGroup1");
        //String yyyy=request.getParameter("select4");
        //String religion=request.getParameter("select5");
        
        
        
        
            
       
        
        String state=request.getParameter("select4");
        String city=request.getParameter("select5");
        String contact=request.getParameter("textfield2");
        String edulevel=request.getParameter("select6");
        String edufield=request.getParameter("select7");
        String workwith=request.getParameter("select8");
        String workas=request.getParameter("select9");       
        String income=request.getParameter("select10");
        String describe=request.getParameter("textarea");
        //String photo=request.getParameter("textfield4");
        
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
              Connection con=DriverManager.getConnection("jdbc:odbc:matrimony_DSN","","");
              PreparedStatement ps=con.prepareStatement("INSERT INTO reg2 VALUES(?,?,?,?,?,?,?,?,?,?,?)");
              PreparedStatement ps2=con.prepareStatement("INSERT INTO reg3 VALUES(?,?,?,?,?,?,?,?,?,?,?)");
              ps.setString(1,email);
              ps.setString(2,marital);
              ps.setString(3,height);
              ps.setString(4,caste);
              ps.setString(5,subcaste);
              ps.setString(6,diet);
              ps.setString(7,smoke);
              ps.setString(8,drink);
              ps.setString(9,value);
              ps.setString(10,complexion);
              ps.setString(11,bodytype);
              int i=ps.executeUpdate();
              
              ps2.setString(1,email);
              ps2.setString(2,state);
              ps2.setString(3,city);
              ps2.setString(4,contact);
              ps2.setString(5,edulevel);
              ps2.setString(6,edufield);
              ps2.setString(7,workwith);
              ps2.setString(8,workas);
              ps2.setString(9,income);
              ps2.setString(10,describe);
              ps2.setString(11,"");
              int i2=ps2.executeUpdate();
                      if(i!=0 && i2!=0)
                      {
                          HttpSession session=request.getSession(true);
                          session.setAttribute("email", email);
                          PreparedStatement ps3=con.prepareStatement("update search set caste=?,state=?,workw=?,workas=? where email=?");
                          ps3.setString(1,caste);
                          ps3.setString(2,state);
                          ps3.setString(3,workwith);
                          ps3.setString(4,workas);
                          ps3.setString(5,email);
                          ps3.executeUpdate();
                                                 
                          response.sendRedirect("upload1.jsp");
                      }
        } 
        catch(Exception e){
            out.println(e.toString());
        }
        finally {            
            out.close();
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
