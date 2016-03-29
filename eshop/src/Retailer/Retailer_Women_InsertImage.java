package Retailer;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Bean.Retailer_Women_Image;

@WebServlet("/Retailer_Women_InsertImage")
@MultipartConfig(maxFileSize=1024*1024*16)
public class Retailer_Women_InsertImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// GetFileName method for Image
	public static String getFileName1(Part image) {
		String img = image.getHeader("content-disposition");
		String[] tokens = img.split(";");
		for (String ob : tokens) {
			if (ob.trim().startsWith("filename")) {
				return ob.substring(ob.indexOf("=") + 2, ob.length() - 1);
			}
		}
		return "";

	}

	private static String getFileName2(Part image) {
		String img = image.getHeader("content-disposition");
		String[] tokens = img.split(";");
		for (String ob : tokens) {
			if (ob.trim().startsWith("filename")) {
				return ob.substring(ob.indexOf("=") + 2, ob.length() - 1);
			}
		}
		return "";

	}

	private static String getFileName3(Part image) {
		String img = image.getHeader("content-disposition");
		String[] tokens = img.split(";");
		for (String ob : tokens) {
			if (ob.trim().startsWith("filename")) {
				return ob.substring(ob.indexOf("=") + 2, ob.length() - 1);
			}
		}
		return "";

	}

	private static String getFileName4(Part image) {
		String img = image.getHeader("content-disposition");
		String[] tokens = img.split(";");
		for (String ob : tokens) {
			if (ob.trim().startsWith("filename")) {
				return ob.substring(ob.indexOf("=") + 2, ob.length() - 1);
			}
		}
		return "";

	}

	private static String getFileName5(Part image) {
		String img = image.getHeader("content-disposition");
		String[] tokens = img.split(";");
		for (String ob : tokens) {
			if (ob.trim().startsWith("filename")) {
				return ob.substring(ob.indexOf("=") + 2, ob.length() - 1);
			}
		}
		return "";

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String Product_Id=request.getParameter("Image_Table2");
			System.out.println("Product_Id is"+Product_Id);
			String Color=request.getParameter("Image_ColorTable2");
			int colorid=0;
			colorid=Model.Model_Retailer_Women_Prdct.Select_Color(Color, Product_Id);
			System.out.println("Colorid is"+colorid);
			
			Part image_1=request.getPart("Image1");
			System.out.println("Part is"+image_1);
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
			
			//Insert Image			
			if(image_1!= null && !filename1.equals(""))
			 {
				 Retailer_Women_Image obj=new Retailer_Women_Image(Product_Id, Color, is_1, filename1, colorid);
				 k=Model.Model_Retailer_Women_Prdct.Insert_Image(obj);
				
				 
			 }
			 
			  if(image_2!=null && !filename2.equals(""))
			 {
				  Retailer_Women_Image obj=new Retailer_Women_Image(Product_Id, Color, is_2, filename2, colorid);
				 k=Model.Model_Retailer_Women_Prdct.Insert_Image(obj);
				 
			 }
			 
			 if(image_3!=null && !filename3.equals(""))
			 {

				 Retailer_Women_Image obj= new Retailer_Women_Image(Product_Id, Color, is_3, filename3, colorid);
				 k=Model.Model_Retailer_Women_Prdct.Insert_Image(obj);
				
		     }
			 
			 if(image_4!=null && !filename4.equals(""))
			 {
				 Retailer_Women_Image obj= new Retailer_Women_Image(Product_Id, Color, is_4, filename4, colorid);
				 k=Model.Model_Retailer_Women_Prdct.Insert_Image(obj);
				
			 }
			 
			 if(image_5!=null && !filename5.equals("")) 
			 {
				 Retailer_Women_Image obj= new Retailer_Women_Image(Product_Id, Color, is_5, filename5, colorid);
				 k=Model.Model_Retailer_Women_Prdct.Insert_Image(obj);
				
			 }
			 
			 //Size Insert
			 if(!Size1.equals(""))
			 {
				 Retailer_Women_Image obj2=new Retailer_Women_Image(Product_Id, Color, Size1, colorid);
				 l=Model.Model_Retailer_Women_Prdct.Insert_Size(obj2);
			 }
			 
			 if(!Size2.equals(""))
			 {
				 Retailer_Women_Image obj2=new Retailer_Women_Image(Product_Id, Color, Size2, colorid);
				 l=Model.Model_Retailer_Women_Prdct.Insert_Size(obj2);
			 }
			 
			 if(!Size3.equals(""))
			 {
				 Retailer_Women_Image obj2=new Retailer_Women_Image(Product_Id, Color, Size3, colorid);
				 l=Model.Model_Retailer_Women_Prdct.Insert_Size(obj2);
			 }
			 
			 if(!Size4.equals(""))
			 {
				 Retailer_Women_Image obj2=new Retailer_Women_Image(Product_Id, Color, Size4, colorid);
				 l=Model.Model_Retailer_Women_Prdct.Insert_Size(obj2);
			 }
			 
			 if(!Size5.equals(""))
			 {
				 Retailer_Women_Image obj2=new Retailer_Women_Image(Product_Id, Color, Size5, colorid);
				 l=Model.Model_Retailer_Women_Prdct.Insert_Image(obj2);
			 }
			 
			 
			 String ms="";	
			 if(l==-1){
				 ms="Size Already exists ";
			 }
			 else if(k==-1){
				 ms="Image Already exists";
			 }
			 else if(l==-2){
				 ms="More than 5 sizes cannot be inserted";
			 }
			 else if(k==-2){
				 ms="More than 5 images cannot be inserted";
			 }
			 else{
				 ms="Row inserted successfully";
			 }
			 response.sendRedirect("Retailer_Women_InsertPrdct.jsp?Mssg="+ms);
		}
		catch (Exception e){
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}		  
}
