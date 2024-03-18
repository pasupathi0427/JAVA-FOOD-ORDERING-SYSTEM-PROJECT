
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Meeraj
 */
public class MyConnection {
    public static Connection getConnection(){
     
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/java_login_register", "root", "");
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        
        return conn;
    }
}
