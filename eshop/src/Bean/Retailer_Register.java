package Bean;

public class Retailer_Register 
{

	private String FirstName;
	private String LastName;
	private String Email;
	private String PhoneNo;
	private String DOB;
	private String OfficeDetails;
	private String State;
	private String City;
	private String Address;
	private String Pincode;
	private String AddProof;
	private String IdProof;
	private String Password;
	private String Retailer_Id;
	
	
	//Constructors
	public Retailer_Register(String firstName, String lastName, String email,
			String phoneNo, String dOB, String officeDetails, String state,
			String city, String address, String pincode, String addProof,
			String idProof) {
		super();
		FirstName = firstName;
		LastName = lastName;
		Email = email;
		PhoneNo = phoneNo;
		DOB = dOB;
		OfficeDetails = officeDetails;
		State = state;
		City = city;
		Address = address;
		Pincode = pincode;
		AddProof = addProof;
		IdProof = idProof;
	}
	
	// Constructors for RetailerRegister
	
		public Retailer_Register(String firstName, String lastName, String email,
				String phoneNo, String state, String city, 
				String addProof, String iDProof) {
			super();
			FirstName = firstName;
			LastName = lastName;
			Email = email;
			PhoneNo = phoneNo;
			State = state;
			City = city;
			
			AddProof = addProof;
			IdProof = iDProof;
		}
    //Constructor for Admin Retailer Delete
		 public Retailer_Register(String email) {
				super();
				Email = email;
			}
	
	//Constructors for Login Verify
	public Retailer_Register(String email, String password, String retailer_Id) {
		super();
		Email = email;
		Password = password;
		Retailer_Id = retailer_Id;
	}

	
   

	public String getPassword() {
		return Password;
	}


	

	public void setPassword(String password) {
		Password = password;
	}


	public String getRetailer_Id() {
		return Retailer_Id;
	}


	public void setRetailer_Id(String retailer_Id) {
		Retailer_Id = retailer_Id;
	}


	//Getters  And Setters
	public String getFirstName() {
		return FirstName;
	}


	

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}


	public String getLastName() {
		return LastName;
	}


	public void setLastName(String lastName) {
		LastName = lastName;
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String email) {
		Email = email;
	}


	public String getPhoneNo() {
		return PhoneNo;
	}


	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}

	
	public String getDOB() {
		return DOB;
	}


	public void setDOB(String dOB) {
		DOB = dOB;
	}


	public String getOfficeDetails() {
		return OfficeDetails;
	}


	public void setOfficeDetails(String officeDetails) {
		OfficeDetails = officeDetails;
	}


	public String getState() {
		return State;
	}


	public void setState(String state) {
		State = state;
	}


	public String getCity() {
		return City;
	}


	public void setCity(String city) {
		City = city;
	}


	public String getAddress() {
		return Address;
	}


	public void setAddress(String address) {
		Address = address;
	}


	public String getPincode() {
		return Pincode;
	}


	public void setPincode(String pincode) {
		Pincode = pincode;
	}


	public String getAddProof() {
		return AddProof;
	}


	public void setAddProof(String addProof) {
		AddProof = addProof;
	}


	public String getIdProof() {
		return IdProof;
	}


	public void setIdProof(String idProof) {
		IdProof = idProof;
	}
	

	
	
	
	
}
