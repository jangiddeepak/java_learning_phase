package practice;


interface pract {
	void getarea(int length,int breadth );
	
}
class practacc implements pract{
	public void getarea(int length,int breadth) {
		System.out.println("area of rectangle " + (length*breadth));
	}
	
}
public class interface1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		practacc  rect = new practacc();
		rect.getarea(10, 3);

	}
 
}
  