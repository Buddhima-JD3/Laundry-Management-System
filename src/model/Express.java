package model;

public class Express extends Loyalty {
	double basepts = 10.0;
	
	public Express(double totprice){
		this.pts = basepts;
		this.totprice2 = totprice;
	
	}
	public double getTotPrice(){
		return totprice2;		
	}

	public double getTotpts() {
		double totalpts = 0;
		
		if(totprice2 >=0 && totprice2 <= 200 ){
			totalpts = basepts;
		}else if(totprice2 >200 && totprice2 <= 1000 ){
			totalpts = ((totprice2/1000)+basepts);
		}else if(totprice2 >1000 && totprice2 <= 5000 ){
			totalpts = ((totprice2/100)+basepts);
		}else
			totalpts = ((totprice2/10)+basepts);
			
		return totalpts;
	}
}
