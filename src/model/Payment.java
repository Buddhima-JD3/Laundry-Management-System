package model;

public class Payment {
	
	//initializing variables
	private int id;
	private String name;
	private String CreditCNumber = null;
	private String SecCode = null;
	private String ExpDate = null;
	private String Bname;
	private String Bemail;
	private String type;
	private double pts;
	public double totprice1;
	

	//to access values
	public double getPts() {
		return pts;
	}
	public int getId() {
		return id;
	}	
	public String getName() {
		return name;
	}
	public String getCreditCNumber() {
		return CreditCNumber;
	}
	public String getSecCode() {
		return SecCode;
	}
	public String getExpDate() {
		return ExpDate;
	}
	public String getBname() {
		return Bname;
	}
	public String getBemail() {
		return Bemail;
	}
	public String getType() {
		return type;
	}
	public double getTotprice() {
		System.out.println("get method called " + totprice1);
		return totprice1;
	}
	
	//to assign values
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCreditCNumber(String creditCNumber) {
		CreditCNumber = creditCNumber;
	}
	public void setSecCode(String secCode) {
		SecCode = secCode;
	}
	public void setExpDate(String expDate) {
		ExpDate = expDate;
	}
	public void setBname(String bname) {
		Bname = bname;
	}
	public void setBemail(String bemail) {
		Bemail = bemail;
	}
	public void setType(String type) {
			
		this.type = type;
		
		if(this.type.equals("express")) {
			this.name = null;
			this.CreditCNumber = null;
			this.SecCode = null;
			this.ExpDate = null;
		}
		
	}
	
	public void setPts(double pts) {
		this.pts = pts;
	
	}
	
	public void setTotprice(double totprice) {
		
		this.totprice1 = totprice;
	}


}
