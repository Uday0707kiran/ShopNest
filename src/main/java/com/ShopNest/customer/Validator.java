package com.ShopNest.customer;

import com.ShopNest.dbHandler.DataFetcher;

public class Validator {
	public static boolean isValid(String uname,String password)
	{
		String dbPass=DataFetcher.fetchpassword(uname);
		if(password.equals(dbPass))
		{
			return true;
		}
		else {
			return false;
		}
	}

}
