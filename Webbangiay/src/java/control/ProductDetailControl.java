/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import com.mysql.cj.Session;
import dao.DAO;
import entity.Product;
import entity.Review;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class ProductDetailControl extends HttpServlet {

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
        try {
            HttpSession session = request.getSession();
            DAO dao = new DAO();
            String pid = request.getParameter("pid");
            List<Product> recentView = (List<Product>) session.getAttribute("recentView");
            if (recentView == null) {
                recentView = new ArrayList<>();
            } else {
                   recentView.add(dao.getProductById(pid)); 
            }
            session.setAttribute("recentView", recentView);

            dao.updateViewProduct(pid);
            Product p = dao.getProductById1(pid);
            String tag = request.getParameter("tag");
            List<Review> listReview = dao.getReviewProduct(Integer.parseInt(pid));
            List<Product> listSimilarProducts = dao.getSimilarProduct(pid);

            if (listReview == null || listReview.size() == 0) {
                listReview = new ArrayList<>();
            } else {
                for (Review rv : listReview) {
                    rv.setUsername(dao.getUser(rv.getIdUser()).getUser());
                }
            }
            if (tag == null) {
                tag = "All Products";
            }
            request.setAttribute("TAG", tag);
            request.setAttribute("prodetail", p);
            request.setAttribute("tagDetail", p.getTitle());
            request.setAttribute("proCid", "category?cid=" + dao.getCidProduct(p.getId() + ""));
            request.setAttribute("listReview", listReview);
            request.setAttribute("totalreview", listReview.size());
            request.setAttribute("listSimilarProducts", listSimilarProducts);
            request.getRequestDispatcher("shopdetail.jsp").forward(request, response);
        } catch (Exception e) {
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
