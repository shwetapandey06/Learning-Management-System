package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtil {

	public static Connection getConnection() {
		try {
			Connection con = null;
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studenthub", "root", "root");
			return con;
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
