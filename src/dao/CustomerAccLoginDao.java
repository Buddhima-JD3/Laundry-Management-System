package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.CustomerAccLogin;

public class CustomerAccLoginDao {
	

		private static String username;

		public boolean validate(CustomerAccLogin loginBean) throws InstantiationException  {
			boolean status = false;

			try (Connection connection = DBConnectionUtil.getConnection();

					// Step 2:Create a statement using connection object
					PreparedStatement preparedStatement = connection
							.prepareStatement("select * from registered where email = ? and password = ? ")) {
				preparedStatement.setString(1, loginBean.getUsername());
				preparedStatement.setString(2, loginBean.getPassword());
				
				System.out.println(preparedStatement);
				ResultSet rs = preparedStatement.executeQuery();
				status = rs.next();
				

			} catch (SQLException e) {
				// process sql exception
				printSQLException(e);
			}
			return status;
		}
		 public void getTotalPts(String email){  
			 CustomerAccLoginDao.username = email;
			 
			}
		
		 public static List <CustomerAccLogin> TotalPts(){  
			  List<CustomerAccLogin> list1 = new ArrayList <CustomerAccLogin>();     
			    try{  
			    	//get database connection
			        Connection con = DBConnectionUtil.getConnection();  
			      //SQL statement
			        PreparedStatement ps=con.prepareStatement("select SUM(LoyaltyPts) as 'TotalPts' from payment where BEmail = ?"); 
			        ps.setString(1,username);
			        ResultSet rs=ps.executeQuery();
			        
			        while(rs.next()){
			        	//create new object
			        	CustomerAccLogin pm2 = new CustomerAccLogin();
			        	
			        	pm2.setTotalpoints(rs.getString("TotalPts"));
			        	list1.add(pm2);
			        }
	
			    }catch(Exception e){System.out.println(e);}  
			    return list1;  
			}
		
		private void printSQLException(SQLException ex) {
			for (Throwable e : ex) {
				if (e instanceof SQLException) {
					e.printStackTrace(System.err);
					System.err.println("SQLState: " + ((SQLException) e).getSQLState());
					System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
					System.err.println("Message: " + e.getMessage());
					Throwable t = ex.getCause();
					while (t != null) {
						System.out.println("Cause: " + t);
						t = t.getCause();
					}
				}
			}
		}
	}
