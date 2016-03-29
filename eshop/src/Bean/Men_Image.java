package Bean;

import java.io.InputStream;

public class Men_Image 
{

	private String Product_Id;
	private String Color;
	private InputStream image;
	private String filename;
	private String filename_new;
	private String Size;
	
	
	
	//Constructors
	
	public Men_Image(String product_Id, String color, InputStream image,
			String filename) {
		super();
		Product_Id = product_Id;
		Color = color;
		this.image = image;
		this.filename = filename;
	}
	
	

	public Men_Image(String product_Id, String color, InputStream image,
			String filename, String filename_new) {
		super();
		Product_Id = product_Id;
		Color = color;
		this.image = image;
		this.filename = filename;
		this.filename_new = filename_new;
	}

//Constructors for Size
	public Men_Image(String product_Id, String color, String size) {
		super();
		Product_Id = product_Id;
		Color = color;
		Size = size;
	}

	//Getters And Setters
	


	public String getSize() {
		return Size;
	}

	public void setSize(String size) {
		Size = size;
	}



	public String getFilename_new() {
		return filename_new;
	}

   public void setFilename_new(String filename_new) {
		this.filename_new = filename_new;
	}



	public String getProduct_Id() {
		return Product_Id;
	}



	public void setProduct_Id(String product_Id) {
		Product_Id = product_Id;
	}



	public String getColor() {
		return Color;
	}



	public void setColor(String color) {
		Color = color;
	}



	public InputStream getImage() {
		return image;
	}



	public void setImage(InputStream image) {
		this.image = image;
	}



	public String getFilename() {
		return filename;
	}



	public void setFilename(String filename1) {
		this.filename = filename1;
	}
	
	
	
	
	
	
}
