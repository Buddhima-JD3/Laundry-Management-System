package dao;

import java.sql.Connection;




import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import model.Payment;

public class PaymentDao {
	
	private static String emailsearch;
	
	public int InsertPayments(Payment pm){
	int result = 0;
	try{
		Connection con = DBConnectionUtil.getConnection();
		String sqlq2 = "INSERT INTO payment" +
	            "(ID, Name, CardNumber, CCV, ExpDate, BName, BEmail, Type, TotalPayment, LoyaltyPts) VALUES " +
	            " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
		 PreparedStatement preparedStatement = con.prepareStatement(sqlq2); {
             
             preparedStatement.setInt(1, pm.getId());
             preparedStatement.setString(2, pm.getName());
             preparedStatement.setString(3, pm.getCreditCNumber());
             preparedStatement.setString(4, pm.getSecCode());
             preparedStatement.setString(5, pm.getExpDate());
             preparedStatement.setString(6, pm.getBname());
             preparedStatement.setString(7, pm.getBemail());
             preparedStatement.setString(8, pm.getType());
             preparedStatement.setLong(9, (long) pm.getTotprice());
             preparedStatement.setLong(10, (long) pm.getPts());
             
             System.out.println(preparedStatement);
             
             result = preparedStatement.executeUpdate();
             }
	}catch(Exception e){
		
		System.out.println(e);
	}
	return result;
	}
	
	public static List<Payment> getAllRecords(){  
	    List<Payment> list=new ArrayList<Payment>();  
	      
	    try{  
	    	//get database connection
	        Connection con = DBConnectionUtil.getConnection();  
	      //SQL statement
	        PreparedStatement ps=con.prepareStatement("select * from payment");  
	        ResultSet rs=ps.executeQuery();
	        
	        while(rs.next()){  
	        	//create new object
	        	
	        	Payment pm = new Payment();
	          
	        	pm.setId(rs.getInt("ID"));
	        	pm.setName(rs.getString("Name"));
	        	pm.setCreditCNumber(rs.getString("CardNumber"));
	        	pm.setSecCode(rs.getString("CCV"));
	        	pm.setExpDate(rs.getString("ExpDate"));
	        	pm.setBname(rs.getString("BName"));
	        	pm.setBemail(rs.getString("BEmail"));
	        	pm.setType(rs.getString("Type"));
	        	pm.setTotprice(rs.getLong("TotalPayment"));
	        	pm.setPts(rs.getLong("LoyaltyPts"));
	            list.add(pm);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	} 
	
	 public void getSearchRecords(String email){  
		 PaymentDao.emailsearch = email;
		 
		}
	 
	 
	 public static List<Payment> searchRecords(){  
		    List<Payment> list1=new ArrayList<Payment>();  
		      
		    try{  
		    	//get database connection
		        Connection con = DBConnectionUtil.getConnection();  
		      //SQL statement
		        PreparedStatement ps=con.prepareStatement("select * from payment where BEmail = ?");  
		        ps.setString(1,emailsearch);
		        ResultSet rs=ps.executeQuery();
		        
		        while(rs.next()){  
		        	//create new object
		        	Payment pm1 = new Payment();
		        	
		        	pm1.setId(rs.getInt("ID"));
		        	pm1.setName(rs.getString("Name"));
		        	pm1.setCreditCNumber(rs.getString("CardNumber"));
		        	pm1.setSecCode(rs.getString("CCV"));
		        	pm1.setExpDate(rs.getString("ExpDate"));
		        	pm1.setBname(rs.getString("BName"));
		        	pm1.setBemail(rs.getString("BEmail"));
		        	pm1.setType(rs.getString("Type"));
		        	pm1.setTotprice(rs.getLong("TotalPayment"));
		        	pm1.setPts(rs.getLong("LoyaltyPts"));
		            list1.add(pm1);
		             
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list1;  
		}
	 
	 
	 public static List<Payment> TotalRecords(){  
		    List<Payment> list2=new ArrayList<Payment>();  
		      
		    try{  
		    	//get database connection
		        Connection con = DBConnectionUtil.getConnection();  
		      //SQL statement
		        PreparedStatement ps=con.prepareStatement("select BName, SUM(LoyaltyPts) as 'TotalPts' from payment group by BName order by SUM(LoyaltyPts) DESC"); 
		        ResultSet rs=ps.executeQuery();
		        
		        while(rs.next()){  
		        	//create new object
		        	Payment pm2 = new Payment();
		        	
		        	pm2.setBname(rs.getString("BName"));
		        	pm2.setPts(rs.getLong("TotalPts"));
		            list2.add(pm2);
		             
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list2;  
		}

	public int deleteBooking(int id) {
		 int status = 0;
		 try{
	
			//get database connection
        	Connection con = DBConnectionUtil.getConnection();
        	//SQL statement
            PreparedStatement prst = con.prepareStatement("DELETE FROM payment WHERE ID = ? "); 
		    prst.setInt(1, id);
		    System.out.println(prst);
	        status = prst.executeUpdate();
	        }
		 
		 catch(Exception e){System.out.println(e);}       
	     return status;
		 
	 } 

		
	 
}

