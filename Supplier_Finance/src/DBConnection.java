import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {

		String username = "DBUSER";
		String password = "1230";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String driver = "oracle.jdbc.driver.OracleDriver";
		String sql = "SELECT * FROM login";
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, username, password);
		return con;
	}
	
}