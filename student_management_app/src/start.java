import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import com.student.manage.Student;
import com.student.manage.studentDao;

public class start {
	public static void main(String[] args) throws IOException {
		System.out.println("welcoem to Student Management App");
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		while(true) {
			System.out.println("Press 1 for Add ");
			System.out.println("Press 2 for Delete ");
			System.out.println("Press 3 for Display ");
			System.out.println("Press 4 for Exit App");
			int c = Integer.parseInt(br.readLine());
			
			if(c==1) { 
				System.out.println("Enter  user name ");
				String name = br.readLine();
				System.out.println("Enter  user phone ");
				String phone = br.readLine();
				System.out.println("Enter  user city ");
				String city = br.readLine();
				Student st = new Student(name,phone,city);
				System.out.println(st);
				 
				boolean ans=studentDao.insertStudentToDB(st);
				if(ans==true) {
					System.out.println("Student is successfully added");
				}
				else {
					System.out.println("somethinfg went wrong try again......");
				} 
				
				
			}
			else if(c==2) {
				System.out.println("Enter student id to delete");
				int userInput =Integer.parseInt(br.readLine());
			boolean ans=studentDao.deleteStudentData(userInput);
				if(ans==true) {
					System.out.println("Student is successfully  deleted ");
					
				}
				else {
					System.out.println("something went wrong try again...");
				}
				
			}
			else if(c==3) {
				 
					studentDao.showStudentData(c);
			 
				
			}
			else if(c==4) {
				break; 
	
			}
			
			
			
			
		
		}
		System.out.println("Thankyou for using application");
		System.out.println("See you soon.........");
	}

}
