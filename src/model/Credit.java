package model;

public class Credit extends Loyalty {
	double basepts = 20;
	
	public Credit(double totprice){
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
			totalpts = ((totprice2/500)+basepts);
		}else if(totprice2 >1000 && totprice2 <= 5000 ){
			totalpts = ((totprice2/50)+basepts);
		}else
			totalpts = ((totprice2/5)+basepts);
			
		return totalpts;
	}
}