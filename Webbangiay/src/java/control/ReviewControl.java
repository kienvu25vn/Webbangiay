/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Account;
import entity.Review;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class ReviewControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
        String pid = request.getParameter("pid");
        String content = request.getParameter("content");
        HttpSession session = request.getSession();
        DAO dao = new DAO();
        SimpleDateFormat fm = new SimpleDateFormat("dd/MM/yyyy");
        String createDate = fm.format(new Date());
        Account acc = (Account) session.getAttribute("acc");
        dao.AddReview(acc.getId(), Integer.parseInt(pid), content, createDate);
        List<Review> listReview = dao.getReviewProduct(Integer.parseInt(pid));

        for (Review rv : listReview) {
            out.println("<div class=\"review-block\">\n" +
"                            <div class=\"card-top\">\n" +
"                                <div class=\"name\">\n" +
"                                    <p style=\"color: #F7941D\">"+dao.getUser(rv.getIdUser()).getUser()+"</p>\n" +
"                                </div>\n" +
"                                <div class=\"name\">\n" +
"                                    <p style=\"color: #F7941D\">"+rv.getCreateDate()+"</p>\n" +
"                                </div>\n" +
"                            </div>\n" +
"\n" +
"                            <div class=\"card-content\">\n" +
"                                <p style=\"color: #000\">"+rv.getContent()+"</p>\n" +
"                            </div>\n" +
"                        </div>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
