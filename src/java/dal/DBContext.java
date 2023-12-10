
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBContext {
    protected Connection connection;
    public DBContext() {
        try {
            // Edit the serverName, databaseName, user, and password to match your Azure SQL Database configuration
            String serverName = "bookstore123.database.windows.net";
            String databaseName = "Fasshop";
            String user = "tiennm";
            String password = "Tienlove012";

            String url = String.format("jdbc:sqlserver://%s:1433;databaseName=%s;", serverName, databaseName);

            // For Azure SQL Database, you should use the Azure-specific JDBC driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            // Add additional properties for Azure SQL Database connection
            java.util.Properties properties = new java.util.Properties();
            properties.setProperty("user", user);
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
