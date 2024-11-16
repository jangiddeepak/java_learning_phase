package com.student.manage;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectionProv {
	  static Connection con = null;
	public static   Connection createC (){
		
		try {
			 String url="jdbc:mysql://localhost:3306/student_manage";
			 String password="Suthar@@1234";
			 String user = "root";
			con=DriverManager.getConnection(url,user, password);
			
			
			
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return con;
		
		
	}

}
