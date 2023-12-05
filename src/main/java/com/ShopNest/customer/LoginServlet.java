package com.ShopNest.customer;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/log")
public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String uname=req.getParameter("uname");
		String pass=req.getParameter("password");
		
		boolean val=Validator.isValid(uname, pass);
		if (val == true && "admin123".equals(uname)) 
		{

			res.sendRedirect("admin.jsp");
		}
		else if(val==true)
		{
			res.sendRedirect("products.jsp");
		}
		else
		{
			res.sendRedirect("login.jsp");
		}
		
	}
	

}
