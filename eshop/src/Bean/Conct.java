package Bean;

import java.sql.DriverManager;
import javax.servlet.annotation.WebServlet;
import java.sql.*;

@WebServlet("/Connect")
public class Conct {

	public static Connection conect() {
		Connection con = null;
		String url = "jdbc:mysql://localhost/OnlineShopping";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, "root", "root");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return con;
	}

}
