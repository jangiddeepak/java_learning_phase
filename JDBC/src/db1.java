import java.sql.*;

public class db1 {

	public static void main(String[] args) {
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaData","root","Suthar@@1234");
		    System.out.println("Connected with the Database Successfully");
		    
		    PreparedStatement prepareStatement=con.prepareStatement("insert into Data values(?,?,?)");
		    prepareStatement.setString(1, "S101");
		    prepareStatement.setString(2, "Sam");
		    prepareStatement.setString(3, "Computers");
		    
		    prepareStatement.executeUpdate();
		    
		    System.out.println("First Record inserted Successfully...");
		    
		    PreparedStatement ps2=con.prepareStatement("insert into Data values(?,?,?)");
		    ps2.setString(1, "S102");
		    ps2.setString(2, "John");
		    ps2.setString(3, "Science");
		    
		    ps2.executeUpdate();
		    
		    System.out.println("Second Record inserted Successfully...");
		    
		    PreparedStatement ps3=con.prepareStatement("insert into Data values(?,?,?)");
		    ps3.setString(1, "S103");
		    ps3.setString(2, "Mike");
		    ps3.setString(3, "Bio");
		    
		    ps3.executeUpdate();
		    
		    System.out.println("Third Record inserted Successfully...");
		    
		    PreparedStatement ps4=con.prepareStatement("insert into Data values(?,?,?)");
		    ps4.setString(1, "S104");
		    ps4.setString(2, "Sunil");
		    ps4.setString(3, "Maths");
		    
		    ps4.executeUpdate();
		    
		    System.out.println("Fourth Record inserted Successfully...");
		    
		    PreparedStatement ps5=con.prepareStatement("insert into Data values(?,?,?)");
		    ps5.setString(1, "S105");
		    ps5.setString(2, "John");
		    ps5.setString(3, "Science");
		    
		    ps5.executeUpdate();
		    
		    System.out.println("Fifth Record inserted Successfully...");
		    
		    PreparedStatement ps11=con.prepareStatement("select * from user");
		       
		       ResultSet rs=ps11.executeQuery();
		       
		       while(rs.next())
		       {
		    	   String sid=rs.getString("stud_id");
		    	   String sname=rs.getString("stud_name");
		    	   String sdept=rs.getString("stud_dept");
		    	   
		    	   System.out.println(sid+" "+sname+" "+sdept);
		       }
		       
		       System.out.println("Data Fetched Successfully");
		   
		       
		       
		       
		       
		       
		     
		}
		catch(SQLException e)
		{
			System.out.println("Insertion Failed");
		}

	}

}