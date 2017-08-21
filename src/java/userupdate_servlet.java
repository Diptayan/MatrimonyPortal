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
 * @author Anwit
 */
public class userupdate_servlet extends HttpServlet {

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
        
        
            
       
        
        String state=request.getParameter("select4");
        String city=request.getParameter("select5");
        String contact=request.getParameter("textfield2");
        String edulevel=request.getParameter("select6");
        String edufield=request.getParameter("select7");
        String workwith=request.getParameter("select8");
        String workas=request.getParameter("select9");       
        String income=request.getParameter("select10");
        String describe=request.getParameter("textarea");
       
        
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
              Connection con=DriverManager.getConnection("jdbc:odbc:matrimony_DSN","","");
              PreparedStatement ps=con.prepareStatement("UPDATE reg2 SET marital=?,height=?,caste=?,subcaste=?,diet=?,smoke=?,drink=?,value=?,complexion=?,bodytype=? WHERE email=?");
              PreparedStatement ps2=con.prepareStatement("UPDATE reg3 SET state=?,city=?,contact=?,edulevel=?,edufield=?,workwith=?,workas=?,income=?,describe=? WHERE email=?");
              
              ps.setString(1,marital);
              ps.setString(2,height);
              ps.setString(3,caste);
              ps.setString(4,subcaste);
              ps.setString(5,diet);
              ps.setString(6,smoke);
              ps.setString(7,drink);
              ps.setString(8,value);
              ps.setString(9,complexion);
              ps.setString(10,bodytype);
              ps.setString(11,email);
              int i=ps.executeUpdate();
              
              ps2.setString(1,state);
              ps2.setString(2,city);
              ps2.setString(3,contact);
              ps2.setString(4,edulevel);
              ps2.setString(5,edufield);
              ps2.setString(6,workwith);
              ps2.setString(7,workas);
              ps2.setString(8,income);
              ps2.setString(9,describe);
              ps2.setString(10,email);
             
              int i2=ps2.executeUpdate();
                      if(i!=0 && i2!=0)
                      {
                          out.println("Updated Profile successfully!");
                          response.sendRedirect("userprofile.jsp?msg=Successful!");
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
