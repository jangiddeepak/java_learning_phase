package practice;

public class question1 {
	public static  int  safeDivide(int a,int b) {
		
			try {
				if(b == 0) {
					throw new  ArithmeticException("Caonnot divide by zero ");
					
				}
				return a/b;
				
			}
			catch(ArithmeticException e) {
				System.out.println(e.getMessage());
				return -1;
		
			}
		
  
		
	}
	public static String safeDivideStr(double a,double b)
	{
		try {
			if(b==0) {
				throw new ArithmeticException("cannot  divide by zero");
			}
			double result = a/b;
			return String.valueOf(result);
		}
		catch(ArithmeticException e){
			return e.getMessage();
			
			
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(safeDivideStr(20,0));
		

	}

}
