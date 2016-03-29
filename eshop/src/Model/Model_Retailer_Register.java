package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.Conct;
import Bean.Retailer_Register;

public class Model_Retailer_Register
{

	public static int Insert(Retailer_Register obj)
	{
		int i=0;
		try {
			Connection con=Conct.conect();
			String sql="Insert into retailer_register(FirstName,LastName,Email,PhoneNo,RetailerId,Password,DOB,OfficeDetails,State,City,Address,Pincode,AddProof,IdProof)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getFirstName());
			ps.setString(2, obj.getLastName());
			ps.setString(3, obj.getEmail());
			ps.setString(4, obj.getPhoneNo());
			ps.setString(5,"Retailerid");
			ps.setString(6, "Password");
			ps.setString(7, obj.getDOB());
			ps.setString(8, obj.getOfficeDetails());
			ps.setString(9, obj.getState());
			ps.setString(10, obj.getCity());
			ps.setString(11, obj.getAddress());
			ps.setString(12, obj.getPincode());
			ps.setString(13, obj.getAddProof());
			ps.setString(14, obj.getIdProof());
			
			i=ps.executeUpdate();
			
			String sql2="Insert into Pending_Retls_Approval( FirstName , LastName , Email , PhoneNo, Status)  "
					+ "values(?,?,?,?,?)";
			PreparedStatement ps2=con.prepareStatement(sql2);
			ps2.setString(1, obj.getFirstName());
			ps2.setString(2, obj.getLastName());
			ps2.setString(3, obj.getEmail());
			ps2.setString(4, obj.getPhoneNo());
			ps2.setString(5, "Pending");
			
			i=ps2.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}
}
