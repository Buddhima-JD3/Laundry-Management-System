package dao;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnectionUtil {
	public static Connection getConnection(){  
	    Connection con = null;  
	    try{  
	        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
	        con=DriverManager.getConnection("jdbc:sqlserver://localhost:59015;databaseName=employees", "buddhima", "sql~123");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
}

}
