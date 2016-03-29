package Bean;

public class TotalBean {
private String email;
private double total_price;

public TotalBean(String email, double total_price) {

	this.email = email;
	this.total_price = total_price;
}

public String getEmail() {
	return email;
}

public double getTotal_price() {
	return total_price;
}


}
