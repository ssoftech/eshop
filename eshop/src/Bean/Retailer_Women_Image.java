package Bean;

import java.io.InputStream;

public class Retailer_Women_Image {
	
	private String Product_Id;
	private String Color;
	private InputStream image;
	private String filename;
	private String filename_new;
	private String Size;
	private int ColorId;
	//Constructors
	
	public Retailer_Women_Image(String product_Id, String color,
			InputStream image, String filename, String filename_new) {
		super();
		Product_Id = product_Id;
		Color = color;
		this.image = image;
		this.filename = filename;
		this.filename_new = filename_new;
	}
	

	
	public Retailer_Women_Image(String product_Id, String color,
			InputStream image, String filename, int colorId) {
		super();
		Product_Id = product_Id;
		Color = color;
		this.image = image;
		this.filename = filename;
		ColorId = colorId;
	}



	
	public Retailer_Women_Image() {
		super();
	}



	public Retailer_Women_Image(String product_Id, String color, String size,
			int colorId) {
		super();
		Product_Id = product_Id;
		Color = color;
		Size = size;
		ColorId = colorId;
	}



	//Getters and Setters

	public int getColorId() {
		return ColorId;
	}



	public void setColorId(int colorId) {
		ColorId = colorId;
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

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFilename_new() {
		return filename_new;
	}

	public void setFilename_new(String filename_new) {
		this.filename_new = filename_new;
	}

	public String getSize() {
		return Size;
	}

	public void setSize(String size) {
		Size = size;
	}
}
