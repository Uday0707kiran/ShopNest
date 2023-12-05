package com.ShopNest.dbHandler;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ShopNest.product.Product;

public class DataFetcher {
	
	public static String fetchpassword(String uname)
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String passw="system";
		String sql="Select PASS from CUSTOMER Where uname=?";
		String dbPass="";
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,passw);
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, uname);
			ResultSet rs=pst.executeQuery();
		    rs.next();
		    dbPass=rs.getString(1);
		}
		catch(Exception e)
		{
			System.out.println("Login Issues");
			e.printStackTrace();
			
		}
		return dbPass;
	}
	
	public static List fetchusersinfo()
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String passw="system";
		String sql="Select uname,email,gender,address from CUSTOMER";
		List ulist=new ArrayList();
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,passw);
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()==true)
			{
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				ulist.add(temp);
			}
		}
		catch(Exception e)
		{
			System.out.println("Problem in Login");
			
		}
		return ulist;
	
	}
	
	public static List fetchproductsinfo()
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String passw="system";
		String sql="Select pid,pname,pdesc,pprice,pimg from PRODUCT";
		List ilist=new ArrayList();
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,passw);
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()==true)
			{
				String temp=rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+":"+rs.getString(5);
				ilist.add(temp);
			}
		}
		catch(Exception e)
		{
			System.out.println("Problem in Fetching product");
			e.printStackTrace();
		}
		return ilist;
	}
	
	public static Product getproductbyId(int pid)
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String passw="system";
		String sql="Select pname,pprice,pimg from PRODUCT where pid=?";
		Product p=null;
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,passw);
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,pid);
			ResultSet rs=ps.executeQuery();
			rs.next();
			String pname=rs.getString(1);
			int pprice=rs.getInt(2);
			String pimg=rs.getString(3);
			p=new Product(pid,pname,pprice,pimg);
			
		}
		catch(Exception e)
		{
			System.out.println("Problem in fetching product by id");
			e.printStackTrace();
		}
		finally {
			return p;
		}
	}

}
