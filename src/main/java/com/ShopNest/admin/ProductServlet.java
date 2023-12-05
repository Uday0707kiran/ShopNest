package com.ShopNest.admin;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShopNest.dbHandler.DataInjector;

@WebServlet("/addP")
public class ProductServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	{
		int pid=Integer.parseInt(req.getParameter("productId"));
		String pname=req.getParameter("productName");
		String pdesc=req.getParameter("productDescription");
		int pprice=Integer.parseInt(req.getParameter("productPrice"));
		String pimg=req.getParameter("productImage");
		
		DataInjector.addProduct(pid, pname, pdesc, pprice, pimg);
	}

}
