package com.ShopNest.dbHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DataInjector {
	public static String addcustomer(String uname, String email,String pass,String gender,String address)
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String passw="system";
		String sql="INSERT INTO CUSTOMER VALUES(?,?,?,?,?)";
		String regStatus="";
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,passw);
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, uname);
			pst.setString(2, email);
			pst.setString(3, pass);
			pst.setString(4, gender);
			pst.setString(5, address);
			
			pst.executeUpdate();
			
			regStatus="success";
		}
		catch(Exception e)
		{
			System.out.println("Problem in Adding Customer");
			e.printStackTrace();
			regStatus="fail";
		}
		finally {
			return regStatus;
		}
		
		
	}
	
	public static boolean addProduct(int pid,String pname,String pdesc,int pprice,String pimg)
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String passw="system";
		String sql="INSERT INTO PRODUCT VALUES(?,?,?,?,?)";
		
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,passw);
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setInt(1, pid);
			pst.setString(2,pname);
			pst.setString(3,pdesc);
			pst.setInt(4,pprice);
			pst.setString(5,pimg);
			
			pst.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Problem in Adding Product");
			e.printStackTrace();
			return false;
		}
		return true;
		
		
		
	}

}
