package Bean;

public class User_Register
{
	private int id;
	  private String FirstName;
	   private String LastName;
	   private String Email;
	   private String Password;
	   private String PhoneNo;
	   private String State;
	   private String City;
	
	    public User_Register() {
		super();
	}

	//Constructor for View_User_Admin
	    public User_Register(int id, String firstName, String lastName,
				String email, String phoneNo, String state, String city) {
			super();
			this.id = id;
			FirstName = firstName;
			LastName = lastName;
			Email = email;
			PhoneNo = phoneNo;
			State = state;
			City = city;
		}

	//Constructors for Register
	   public User_Register(String firstName, String lastName, String email, String password, String phoneNo,  String state, String city)
		{
			super();
			FirstName = firstName;
			LastName = lastName;
			Email = email;
			Password = password;
			PhoneNo = phoneNo;
			State = state;
			City = city;
		}
	   
	   
	//Constructors for Login Verify
	   
	   public User_Register(String email, String password)
		{
			super();
			Email = email;
			Password = password;
		}

	 //Setters And Getters
	   
	public String getFirstName()
	{
		return FirstName;
	}

	public void setFirstName(String firstName)
	{
		FirstName = firstName;
	}

	public String getLastName()
	{
		return LastName;
	}

	public void setLastName(String lastName)
	{
		LastName = lastName;
	}

	public String getEmail()
	{
		return Email;
	}

	public void setEmail(String email)
	{
		Email = email;
	}

	public String getPassword()
	{
		return Password;
	}

	public void setPassword(String password)
	{
		Password = password;
	}

	public String getPhoneNo()
	{
		return PhoneNo;
	}

	public void setPhoneNo(String phoneNo)
	{
		PhoneNo = phoneNo;
	}

	public String getState()
	{
		return State;
	}

	public void setState(String state)
	{
		State = state;
	}

	public String getCity()
	{
		return City;
	}

	public void setCity(String city)
	{
		City = city;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	   
	   
	   
	   
	   
}
