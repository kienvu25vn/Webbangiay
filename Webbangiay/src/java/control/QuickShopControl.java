/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class QuickShopControl extends HttpServlet {

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
        String id = request.getParameter("pid");
        DAO dao = new DAO();
        Product p = dao.getProductById(id);
        out.println("	<div class=\"modal-dialog\" role=\"document\">\n"
                + "					<div class=\"modal-content\">\n"
                + "						<div class=\"modal-header\">\n"
                + "							<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span class=\"ti-close\" aria-hidden=\"true\"></span></button>\n"
                + "						</div>\n"
                + "						<div class=\"modal-body\">\n"
                + "							<div class=\"row no-gutters\">\n"
                + "								<div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">\n"
                + "									<!-- Product Slider -->\n"
                + "										<div class=\"product-gallery\">\n"
                + "											<div class=\"quickview-slider-active\">\n"
                + "												<div class=\"single-slider\">\n"
                + "													<img style=\"width: 92.5%;\" src=\"" + p.getImage() + "\" alt=\"#\">\n"
                + "												</div>\n"
                + "												<div class=\"single-slider\">\n"
                + "												</div>\n"
                + "												<div class=\"single-slider\">\n"
                + "												</div>\n"
                + "												<div class=\"single-slider\">\n"
                + "												</div>\n"
                + "											</div>\n"
                + "										</div>\n"
                + "									<!-- End Product slider -->\n"
                + "								</div>\n"
                + "								<div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">\n"
                + "									<div class=\"quickview-content\">\n"
                + "										<h2>" + p.getTitle() + "</h2>\n"
                + "										<div class=\"quickview-ratting-review\">\n"
                + "											<div class=\"quickview-ratting-wrap\">\n"
                + "												<div class=\"quickview-ratting\">\n"
                + "													<i class=\"yellow fa fa-star\"></i>\n"
                + "													<i class=\"yellow fa fa-star\"></i>\n"
                + "													<i class=\"yellow fa fa-star\"></i>\n"
                + "													<i class=\"yellow fa fa-star\"></i>\n"
                + "													<i class=\"fa fa-star\"></i>\n"
                + "												</div>\n"
                + "												<a href=\"#\"> (1 customer review)</a>\n"
                + "											</div>\n"
                + "											<div class=\"quickview-stock\">\n"
                + "												<span><i class=\"fa fa-check-circle-o\"></i> in stock</span>\n"
                + "											</div>\n"
                + "										</div>\n"
                + "										<h3>$" + p.getPrice() + "</h3>\n"
                + "										<div class=\"quickview-peragraph\">\n"
                + "											<p>" + p.getDescription() + "</p>\n"
                + "										</div>\n"
                + "										<div class=\"size\">\n"
                + "											<div class=\"row\">\n"
                + "												<div class=\"col-lg-6 col-12\">\n"
                + "													<h5 class=\"title\">Size</h5>\n"
                + "													<select>\n"
                + "														<option selected=\"selected\">s</option>\n"
                + "														<option>m</option>\n"
                + "														<option>l</option>\n"
                + "														<option>xl</option>\n"
                + "													</select>\n"
                + "												</div>\n"
                + "												<div class=\"col-lg-6 col-12\">\n"
                + "													<h5 class=\"title\">Color</h5>\n"
                + "													<select>\n"
                + "														<option selected=\"selected\">orange</option>\n"
                + "														<option>purple</option>\n"
                + "														<option>black</option>\n"
                + "														<option>pink</option>\n"
                + "													</select>\n"
                + "												</div>\n"
                + "											</div>\n"
                + "										</div>\n"
                + "										<div class=\"quantity\">\n"
                + "											<!-- Input Order -->\n"
                + "											<div class=\"input-group\">\n"
                + "												<div class=\"button minus\">\n"
                + "													<button type=\"button\" class=\"btn btn-primary btn-number\" disabled=\"disabled\" data-type=\"minus\" data-field=\"quant[1]\">\n"
                + "														<i class=\"ti-minus\"></i>\n"
                + "													</button>\n"
                + "												</div>\n"
                + "												<input type=\"text\" name=\"quant[1]\" class=\"input-number\"  data-min=\"1\" data-max=\"1000\" value=\"1\">\n"
                + "												<div class=\"button plus\">\n"
                + "													<button type=\"button\" class=\"btn btn-primary btn-number\" data-type=\"plus\" data-field=\"quant[1]\">\n"
                + "														<i class=\"ti-plus\"></i>\n"
                + "													</button>\n"
                + "												</div>\n"
                + "											</div>\n"
                + "											<!--/ End Input Order -->\n"
                + "										</div>\n"
                + "										<div class=\"add-to-cart\">\n"
                + "											<a href=\"#\" class=\"btn\">Add to cart</a>\n"
                + "											<a href=\"#\" class=\"btn min\"><i class=\"ti-heart\"></i></a>\n"
                + "											<a href=\"#\" class=\"btn min\"><i class=\"fa fa-compress\"></i></a>\n"
                + "										</div>\n"
                + "										<div class=\"default-social\">\n"
                + "											<h4 class=\"share-now\">Share:</h4>\n"
                + "											<ul>\n"
                + "												<li><a class=\"facebook\" href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n"
                + "												<li><a class=\"twitter\" href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n"
                + "												<li><a class=\"youtube\" href=\"#\"><i class=\"fa fa-pinterest-p\"></i></a></li>\n"
                + "												<li><a class=\"dribbble\" href=\"#\"><i class=\"fa fa-google-plus\"></i></a></li>\n"
                + "											</ul>\n"
                + "										</div>\n"
                + "									</div>\n"
                + "								</div>\n"
                + "							</div>\n"
                + "						</div>\n"
                + "					</div>\n"
                + "				</div>");
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
