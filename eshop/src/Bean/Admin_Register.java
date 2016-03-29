package Bean;

import java.io.InputStream;

public class Admin_Register 
{

	private String EmployeeId;
	private String FirstName;
	private String LastName;
	private String Email;
	private String Password;
	private String PhoneNo;
	private String  DateOfBirth;
	private InputStream Image;
	
	//Constructors
	public Admin_Register(String employeeId, String firstName, String lastName,
			String email, String password, String phoneNo, String dateOfBirth,
			InputStream image) {
		super();
		EmployeeId = employeeId;
		FirstName = firstName;
		LastName = lastName;
		Email = email;
		Password = password;
		PhoneNo = phoneNo;
		DateOfBirth = dateOfBirth;
		Image = image;
	}

	//Setters And Getters
	public String getEmployeeId() {
		return EmployeeId;
	}

	public void setEmployeeId(String employeeId) {
		EmployeeId = employeeId;
	}

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

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getPhoneNo() {
		return PhoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}

	public String getDateOfBirth() {
		return DateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}

	public InputStream getImage() {
		return Image;
	}

	public void setImage(InputStream image) {
		Image = image;
	}


	//Login Constructor
	
	public Admin_Register(String employeeId, String email, String password) {
		super();
		EmployeeId = employeeId;
		Email = email;
		Password = password;
	}

	


	//OTP Constructor;
	public Admin_Register(String email) {
		super();
		Email = email;
	}
	
}
