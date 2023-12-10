
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBContext {
    protected Connection connection;
    public DBContext()
    {
        try {
            // Edit URL , username, password to authenticate with your MS SQL Server
            String url = "jdbc:sqlserver://bookstore123.database.windows.net:1433;database=Fasshop";
            String username = "tiennm";
            String password = "Tienlove012";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            java.util.Properties properties = new java.util.Properties();
            properties.setProperty("user", username);
            properties.setProperty("password", password);
            properties.setProperty("encrypt", "true");
            properties.setProperty("trustServerCertificate", "false");
            properties.setProperty("hostNameInCertificate", "*.database.windows.net");
            properties.setProperty("loginTimeout", "30");
            connection = DriverManager.getConnection(url, properties);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }
}
