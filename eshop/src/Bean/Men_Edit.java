package Bean;

public class Men_Edit 
{
	private String ProductCreatedOn;
	private String Type;
	private String Brand_Name;
	private String Fittings;
	private Double Price;
	private String About_The_Product;
	private String Header;
	private String Product_Id;
	
	//Constructors
	
	public Men_Edit(String productCreatedOn, String type, String brand_Name,
			String fittings, Double price, String about_The_Product,
			String header, String product_Id) {
		super();
		ProductCreatedOn = productCreatedOn;
		Type = type;
		Brand_Name = brand_Name;
		Fittings = fittings;
		Price = price;
		About_The_Product = about_The_Product;
		Header = header;
		Product_Id=product_Id;
	}

	public String getProduct_Id() {
		return Product_Id;
	}

	public void setProduct_Id(String product_Id) {
		Product_Id = product_Id;
	}

	//Getters and Setters
	public String getProductCreatedOn() {
		return ProductCreatedOn;
	}

	public void setProductCreatedOn(String productCreatedOn) {
		ProductCreatedOn = productCreatedOn;
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
