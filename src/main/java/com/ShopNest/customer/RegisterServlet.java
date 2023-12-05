package com.ShopNest.customer;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShopNest.dbHandler.DataInjector;

@WebServlet("/reg")
public class RegisterServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String uname=req.getParameter("username");
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		String gender=req.getParameter("gender");
		String address=req.getParameter("address");
		
		String status=DataInjector.addcustomer(uname, email, pass, gender, address);
		
		res.sendRedirect("login.jsp");
	}

}
