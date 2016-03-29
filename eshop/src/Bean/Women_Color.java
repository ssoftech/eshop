package Bean;

public class Women_Color 
{

	private String Product_Id;
	private String Color;
	private int Quantity;
	
	
	//Constructors
	public Women_Color(String product_Id, String color, int quantity) {
		super();
		Product_Id = product_Id;
		Color = color;
		Quantity = quantity;
	}


	//Getters And Setters
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


	public int getQuantity() {
		return Quantity;
	}


	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

}
