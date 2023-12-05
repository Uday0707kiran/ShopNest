package com.ShopNest.product;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ShopNest.dbHandler.DataFetcher;

@WebServlet("/addtoc")
public class AddToCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        Product product=DataFetcher.getproductbyId(productId);
        HttpSession session = request.getSession();
       Cart cart=(Cart) session.getAttribute("cart");
       if(cart==null)
       {
    	   cart=new Cart();
    	   session.setAttribute("cart", cart);
       }
       cart.addItem(product);
       

        response.sendRedirect("cart.jsp");
    }
}
