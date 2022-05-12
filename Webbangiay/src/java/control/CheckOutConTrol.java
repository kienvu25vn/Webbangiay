/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Account;
import entity.Bill;
import entity.Cart;
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
public class CheckOutConTrol extends HttpServlet {

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
            request.setCharacterEncoding("UTF-8");
            String customerName = request.getParameter("customerName");
            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phonenumber");
            String address = request.getParameter("address");
            String payment = request.getParameter("payment");
            DAO dao = new DAO();
            List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
            Account acc = (Account) session.getAttribute("acc");
            int total = 0, shiping = 0;
            for (Cart c : listCart) {
                total += c.getAmount();
            }
            if (total >= 500) {
                shiping = 0;
            } else {
                shiping = 10;
            }
            total = total + shiping;
            int idBill = dao.AddBill(acc.getId(), customerName, payment, email, address, total, payment);
            for (Cart c : listCart) {
                dao.AddDetailBill(c.getProduct().getId(), idBill, c.getQuantity(), (int) c.getProduct().getPrice(), c.getSize());
                String size = "";
                if (c.getSize().equalsIgnoreCase("S")) {
                    size = "size1";
                } else if (c.getSize().equalsIgnoreCase("M")) {
                    size = "size2";
                } else {
                    size = "size3";
                }
                int Size = dao.getSizeProduct(size, c.getProduct().getId());
                dao.updateSizeProduct(size, Size - c.getQuantity(), c.getProduct().getId());
                int amount = dao.getAmountProduct(c.getProduct().getId());
                dao.updateAmountProduct(amount - c.getQuantity(), c.getProduct().getId());
            }
            List<UserCarts> UserCarts = (List<UserCarts>) session.getAttribute("listUserCarts");
            for (UserCarts uc : UserCarts) {
                if (uc.getIdUser() == acc.getId()) {
                    uc.setListCart(new ArrayList<>());
                    session.setAttribute("listCart", uc.getListCart());
                    break;
                }
            }
            request.getRequestDispatcher("thankpage.jsp").forward(request, response);
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
