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
public class partner_servlet extends HttpServlet {

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
        
        String email=request.getParameter("hiddenField");
        String age1=request.getParameter("select");
        String age2=request.getParameter("select2");
        String height1=request.getParameter("select3");
        String height2=request.getParameter("select4");
        String religion=request.getParameter("select5");
        String tongue=request.getParameter("select6");
        String caste=request.getParameter("select7");       
        String edulevel=request.getParameter("select9");
        String diet=request.getParameter("RadioGroup1");
      
        
      
             try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
              Connection con=DriverManager.getConnection("jdbc:odbc:matrimony_DSN","","");
              PreparedStatement ps=con.prepareStatement("INSERT INTO partner_details VALUES(?,?,?,?,?,?,?,?,?,?)");
              
              ps.setString(1,email);
              ps.setString(2,age1);
              ps.setString(3,age2);
              ps.setString(4,height1);
              ps.setString(5,height2);
              ps.setString(6,religion);
              ps.setString(7,tongue);
              ps.setString(8,caste);
              ps.setString(9,edulevel);
              ps.setString(10,diet);
           
              int i=ps.executeUpdate();
             
       
                      if(i!=0)
                      {
                          HttpSession session=request.getSession(true);
                          session.setAttribute("email", email);
                          response.sendRedirect("userprofile.jsp");
                      }
        } 
        catch(Exception e){
            out.println(e.toString());
        
        } finally {            
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
