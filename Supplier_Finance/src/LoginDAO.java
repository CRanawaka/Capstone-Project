import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

 

public class LoginDAO {
    public List<Login> getAllLogin() {
        String qry = "SELECT *  FROM login";
        List<Login> loginList = new ArrayList<Login>();
        try {
            Connection con = DBConnection.getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(qry);
            while (rs.next()) {
                Login login = new Login();
                login.setUname(rs.getString(2));
                login.setPasswd(rs.getString(3));
                loginList.add(login);
            }
 

            con.close();
            stmt.close();
            rs.close();

 

        } catch (Exception e) {

 

        }
        return loginList;
        }
}