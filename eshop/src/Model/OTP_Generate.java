package Model;
import java.util.Random;


public  class OTP_Generate 
{

	public static String OTP_Generator()
	{
		String a="";
		String e="";
		int b=0;
		Random r=new Random();
		String[] alphabet={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","e","s","t","u","v","w","x","y","z"};
		int c=8;
		int nc=0-c;
		int c2=c/2;
		int nc2=0-c2;
		int ncm=(nc+1)/2;
		if(c%2==0)
		{   
			for(int x=nc2;x<0;x++)
			{
				int alphaNum=r.nextInt(26);
				 a=(alphabet[alphaNum]);
				 e=e+a;
				int numNum=r.nextInt(10);
				 b=(+numNum);
				 e=e+b;
				//e=a+b;
				
				//System.out.print(e); 
			}
			
			
}
		else
		{
			 System.out.println("else");
			for(int x=ncm;x<0;x++)
			{
				int alphaNum=r.nextInt(26);
				a=(alphabet[alphaNum]);
				e=e+a;
				int numNum=r.nextInt(10);
				b=(+numNum);
				e=e+b;
				//e=a+b; 
				
			}
			
			int numNum=r.nextInt(10);
			e=e+numNum;
			
		}
		
		return e;
		

		}
	 

}

