/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Account;
import entity.Category;
import entity.Product;
import entity.UserCarts;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class ShopMainControl extends HttpServlet {

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
            DAO dao = new DAO();
            List<Product> listP = new ArrayList<>();
            List<Product> list = dao.getAllProducts();
            List<Category> listC = dao.getAllCategorys();
            int pagetags = list.size() / 9 + 1;
            for (int i = 0; i < 9; i++) {
                listP.add(list.get(i));
            }
            int flag = 0;
            HttpSession session = request.getSession();
            List<UserCarts> UserCarts = (List<UserCarts>) session.getAttribute("listUserCarts");
            Account acc = (Account) session.getAttribute("acc");
            if (UserCarts == null) {
                UserCarts = new ArrayList<>();
                session.setAttribute("listUserCarts", new ArrayList<>());
            } else {
                for (UserCarts carts : UserCarts) {
                    if (carts.getIdUser() == acc.getId()) {
                        flag = 1;
                        session.setAttribute("listCart", carts.getListCart());
                        break;
                    }
                }
            }
            if (flag == 0) {
                session.setAttribute("listCart", new ArrayList<>());
            }
            request.setAttribute("listP", listP);
            request.setAttribute("listCategory", listC);
            request.setAttribute("tag", "All Products");
            request.setAttribute("pagetags", pagetags);
            request.setAttribute("pagetag", 1);
            request.getRequestDispatcher("shop.jsp").forward(request, response);
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
