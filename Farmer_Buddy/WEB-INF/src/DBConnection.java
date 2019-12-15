package my;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ResourceBundle;

public class DBConnection {

    public String sDriverName=null;
    public String sServerName=null;
    public String sPort=null;
    public String sDatabaseName=null;
    public String sUserName=null;
    public String sPassword=null;

    public Connection getDBConnection() throws Exception{
        Connection conn = null;

        ResourceBundle rb=ResourceBundle.getBundle("connection_config");

         sDriverName=rb.getString("driver.name");
         sServerName=rb.getString("server.name");
         sPort=rb.getString("port.no");
         sDatabaseName=rb.getString("database.name");
         sUserName=rb.getString("user.name");
         sPassword=rb.getString("user.password");

        Class.forName(sDriverName).newInstance();

        String sURL ="jdbc:db2://"+sServerName+":"+sPort+"/"+sDatabaseName;

        conn = DriverManager.getConnection(sURL,sUserName, sPassword);
      return conn;
    }
}
