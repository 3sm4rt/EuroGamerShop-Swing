package eurogamershop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class DataBaseConnection {
    final static String DB_URL = "jdbc:mysql://localhost:3306/eurogamershop";
    final static String USER = "root";
    final static String PASS = "";
    
    public static Connection connection(){
        try{
           // Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, USER,PASS);
            
            return conn;
            
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null,e.getMessage());
            return null;
        }
    
}
}
