package Men_Wear;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Bean.Men_Image;
import Bean.Women_Image;


@WebServlet("/Admin_Women_InsertImage")
@MultipartConfig(maxFileSize=1024*1024*16)
public class Admin_Women_InsertImage extends HttpServlet {
	private static final long serialVersionUID = 1L;


	//GetFileName method for Image
	
		public static String getFileName1(Part image)
		{
			String img=image.getHeader("content-disposition");
			String[] tokens=img.split(";");
			for(String ob:tokens)
			{
				if(ob.trim().startsWith("filename"))
				{
					return ob.substring(ob.indexOf("=")+2, ob.length()-1);
				}
			}
			return "";
			
			
		}
		
		private static String getFileName2(Part image)
		{
			String img=image.getHeader("content-disposition");
			String[] tokens=img.split(";");
			for(String ob:tokens)
			{
				if(ob.trim().startsWith("filename"))
				{
					return ob.substring(ob.indexOf("=")+2, ob.length()-1);
				}
			}
			return "";
			
			
		}
		
		private static String getFileName3(Part image)
		{
			String img=image.getHeader("content-disposition");
			String[] tokens=img.split(";");
			for(String ob:tokens)
			{
				if(ob.trim().startsWith("filename"))
				{
					return ob.substring(ob.indexOf("=")+2, ob.length()-1);
				}
			}
			return "";
			
			
		}
		
		private static String getFileName4(Part image)
		{
			String img=image.getHeader("content-disposition");
			String[] tokens=img.split(";");
			for(String ob:tokens)
			{
				if(ob.trim().startsWith("filename"))
				{
					return ob.substring(ob.indexOf("=")+2, ob.length()-1);
				}
			}
			return "";
			
			
		}
		
		private static String getFileName5(Part image)
		{
			String img=image.getHeader("content-disposition");
			String[] tokens=img.split(";");
			for(String ob:tokens)
			{
				if(ob.trim().startsWith("filename"))
				{
					return ob.substring(ob.indexOf("=")+2, ob.length()-1);
				}
			}
			return "";
			
			
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//Image Insert
		
		try {
			
			 

			  String Product_Id=request.getParameter("Image_Table2");
			  String Color=request.getParameter("Image_ColorTable2");
			  Part image_1=request.getPart("Image1");
			  InputStream is_1=image_1.getInputStream();
			  String Size1=request.getParameter("Size1");
			  
			  Part image_2=request.getPart("Image2");
			  InputStream is_2=image_2.getInputStream();
			  String Size2=request.getParameter("Size2");
			  Part image_3=request.getPart("Image3");
			  InputStream is_3=image_3.getInputStream();
			  String Size3=request.getParameter("Size3");
			  
			  Part image_4=request.getPart("Image4");
			  InputStream is_4=image_4.getInputStream();
			  String Size4=request.getParameter("Size4");
			  Part image_5=request.getPart("Image5");
			  InputStream is_5=image_5.getInputStream();
			  String Size5=request.getParameter("Size5");
			  int k=0;
			  int l=0;
			  
			  
			  String filename1=null;
			  filename1=getFileName1(image_1);

			  String filename2=null;
			  filename2=getFileName2(image_2);
			  String filename3=null;
			  filename3=getFileName3(image_3);
			  
			  String filename4=null;
			  filename4=getFileName4(image_4);
			  
			  String filename5=null;
			  filename5=getFileName5(image_5);
			  
			 if(image_1!= null && !filename1.equals(""))
			 {
				 Women_Image obj= new Women_Image(Product_Id, Color, is_1, filename1);
				 k=Model.Model_Women_Prdct.Insert_Image(obj);
				
				 
			 }
			 
			  if(image_2!=null && !filename2.equals(""))
			 {
				 Women_Image obj= new Women_Image(Product_Id, Color, is_2, filename2);
				 k=Model.Model_Women_Prdct.Insert_Image(obj);
				 
			 }
			 
			 if(image_3!=null && !filename3.equals(""))
			 {

				 Women_Image obj= new Women_Image(Product_Id, Color, is_3, filename3);
				 k=Model.Model_Women_Prdct.Insert_Image(obj);
				
		     }
			 
			 if(image_4!=null && !filename4.equals(""))
			 {
				 Women_Image obj= new Women_Image(Product_Id, Color, is_4, filename4);
				 k=Model.Model_Women_Prdct.Insert_Image(obj);
				
			 }
			 
			 if(image_5!=null && !filename5.equals("")) 
			 {
				 Women_Image obj= new Women_Image(Product_Id, Color, is_5, filename5);
				 k=Model.Model_Women_Prdct.Insert_Image(obj);
				
			 }
				
	//Size Insert
			 
			 if(!Size1.equals(""))
			 {
				 Women_Image obj2=new Women_Image(Product_Id, Color, Size1);
				 l=Model.Model_Women_Prdct.Insert_Size(obj2);
			 }
			 
			 if(!Size2.equals(""))
			 {
				 Women_Image obj2=new Women_Image(Product_Id, Color, Size2);
				 l=Model.Model_Women_Prdct.Insert_Size(obj2);
			 }
			 
			 if(!Size3.equals(""))
			 {
				 Women_Image obj2=new Women_Image(Product_Id, Color, Size3);
				 l=Model.Model_Women_Prdct.Insert_Size(obj2);
			 }
			 
			 if(!Size4.equals(""))
			 {
				 Women_Image obj2=new Women_Image(Product_Id, Color, Size4);
				 l=Model.Model_Women_Prdct.Insert_Size(obj2);
			 }
			 
			 if(!Size5.equals(""))
			 {
				 Women_Image obj2=new Women_Image(Product_Id, Color, Size5);
				 l=Model.Model_Women_Prdct.Insert_Size(obj2);
			 }
				
				String ms="";
			 
				if(l==-1)
				{
					 ms="Size Already exists ";
					
				}
				else if(k==-1)
				{
					ms="Image Already exists";
				}
				
				else if(l==-2)
				{
					 ms="More than 5 sizes cannot be inserted";
					
				}
				else if(k==-2)
				{
					 ms="More than 5 images cannot be inserted";
				}
				else
				{
					 ms="Row inserted successfully";
					
				}
				response.sendRedirect("Admin_Women_InsertPrdct.jsp?Mssg="+ms);	
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
