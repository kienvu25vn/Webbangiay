/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Account;
import entity.Cart;
import entity.UserCarts;
import entity.Product;
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
public class AddToCartConTrol extends HttpServlet {

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
        HttpSession session = request.getSession();
        List<Cart> listC = (List<Cart>) session.getAttribute("listCart");
        if (listC == null) {
            listC = new ArrayList<>();
        }
        PrintWriter out = response.getWriter();
        String pid = request.getParameter("pid");
        String size = request.getParameter("size");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
      
        DAO dao = new DAO();

        Product p = dao.getProductById(pid);
        listC.add(new Cart(p,size , quantity ));
        
        List<UserCarts> listCarts = (List<UserCarts>) session.getAttribute("listUserCarts");
        Account acc = (Account) session.getAttribute("acc");
        listCarts.add(new UserCarts(listC, acc.getId()));
        session.setAttribute("listCarts", listCarts);
        for (Cart c : listC) {
            out.println("<li class=\"cart-item\">\n"
                    + "                                                <a onclick=\"deletecartitem(" + c.getProduct().getId() + ")\" class=\"remove\" title=\"Remove this item\"><i class=\"fa fa-remove\"></i></a>\n"
                    + "                                                <a class=\"cart-img\" href=\"productdetail?pid=" + c.getProduct().getId() + "\"><img src=\"" + c.getProduct().getImage() + "\" alt=\"#\"></a>\n"
                    + "                                                <h4><a href=\"productdetail?pid=" + c.getProduct().getId() + "\">" + c.getProduct().getTitle() + "</a></h4>\n"
                    + "                                                <p class=\"quantity cart-quantity\" id=\"cart-quantity\" data-value=\"" + c.getQuantity() + "\">" + c.getQuantity() + "x - <span class=\"amount cart-price\" id=\"cart-price\" data-value=\"" + c.getProduct().getPrice() + "\">$" + c.getProduct().getPrice() + "</span> - <span class=\"size\">Size " + c.getSize() + "</span></p>\n"
                    + "                                            </li>");
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
