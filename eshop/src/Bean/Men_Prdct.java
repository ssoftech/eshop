package Bean;

import java.io.InputStream;

public class Men_Prdct 
{
	
	private String ProductCreatedOn;
	private String Product_Id;
	private String Category;
	private String Type;
	private String Brand_Name;
	private String Fittings;
	private Double Price;
	private String About_The_Product;
	private String Header;
	private InputStream Image;
	//Constructors for Product
	
	public Men_Prdct(String productCreatedOn, String product_Id,
			String category, String type, String brand_Name, String fittings,
			Double price, String about_The_Product, String header) {
		super();
		ProductCreatedOn = productCreatedOn;
		Product_Id = product_Id;
		Category = category;
		Type = type;
		Brand_Name = brand_Name;
		Fittings = fittings;
		Price = price;
		About_The_Product = about_The_Product;
		Header = header;
	}
	
   //Constructors for Full Product By Category
	public Men_Prdct(String product_Id, String category, String type,
			String brand_Name, String fittings, Double price,
			String about_The_Product, String header) {
		super();
		Product_Id = product_Id;
		Category = category;
		Type = type;
		Brand_Name = brand_Name;
		Fittings = fittings;
		Price = price;
		About_The_Product = about_The_Product;
		Header = header;
		
	}

	
	
	

	//Setters And Getters
	
	public InputStream getImage() {
		return Image;
	}

	


	public void setImage(InputStream image) {
		Image = image;
	}

	public String getProductCreatedOn() {
		return ProductCreatedOn;
	}

	

	public void setProductCreatedOn(String productCreatedOn) {
		ProductCreatedOn = productCreatedOn;
	}

	public String getProduct_Id() {
		return Product_Id;
	}

	public void setProduct_Id(String product_Id) {
		Product_Id = product_Id;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public String getBrand_Name() {
		return Brand_Name;
	}

	public void setBrand_Name(String brand_Name) {
		Brand_Name = brand_Name;
	}

	public String getFittings() {
		return Fittings;
	}

	public void setFittings(String fittings) {
		Fittings = fittings;
	}

	public Double getPrice() {
		return Price;
	}

	public void setPrice(Double price) {
		Price = price;
	}

	public String getAbout_The_Product() {
		return About_The_Product;
	}

	public void setAbout_The_Product(String about_The_Product) {
		About_The_Product = about_The_Product;
	}

	public String getHeader() {
		return Header;
	}

	public void setHeader(String header) {
		Header = header;
	}
	
	
	
	
	
}
