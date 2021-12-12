package model;

import java.io.Serializable;

public class CustomerAccLogin implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String totalpoints = "0";
	private String status = "Loyalty Unavailable";
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTotalpoints() {
		return status;
	}

	public void setTotalpoints(String totalpoints) {
		System.out.println(totalpoints);

		this.totalpoints = totalpoints;

		try {
			double totpts = Double.parseDouble(this.totalpoints);

			System.out.println(totpts);
			if(totpts >= 0 && totpts <= 1000)
				status = "Bronze " + "(" + totpts + " pts)";
			else if(totpts > 1000 && totpts <= 10000)
				status = "Gold " + "(" + totpts + " pts)";
			else
				status = "Platinum " + "(" + totpts + " pts)";
		}
		catch (Exception e){System.out.println(e);
		} 
		finally {
			System.out.println(status);
		}
	}
}
