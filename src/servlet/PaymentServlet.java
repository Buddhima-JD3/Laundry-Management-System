package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PaymentDao;
import model.Express;
import model.Credit;
import model.Payment;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PaymentDao pd;
	
	public void init() {
		pd = new PaymentDao();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String BEmail = null;
		String generatedPassword = null;
		String id = request.getParameter("id");
		int idno = 	Integer.parseInt(id);
		String totprice = request.getParameter("totprice");
		String name = request.getParameter("q3_myProducts[cc_firstName]") + " " + request.getParameter("q3_myProducts[cc_lastName]");
		String CredNum = request.getParameter("q3_myProducts[cc_number]");
		String CCV = request.getParameter("q3_myProducts[cc_ccv]");
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			 md.update(CCV.getBytes());
			 byte[] bytes = md.digest();
			 StringBuilder sb = new StringBuilder();
			 for(int i=0; i< bytes.length ;i++)
	            {
	                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
	            }
	            //Get complete hashed password in hex format
	            generatedPassword = sb.toString();
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String ExpDate = request.getParameter("q3_myProducts[cc_exp_month]") +"/" + request.getParameter("q3_myProducts[cc_exp_year]");
		String BName = request.getParameter("q4_buyerName[first]") + " " + request.getParameter("q4_buyerName[last]");
		BEmail = request.getParameter("q5_buyerEmail");
		String Type = request.getParameter("q3_myProducts[paymentType]");
		
		
		
		
		double result = 0;
		double no2 = Double.parseDouble(totprice);
		
		
		Payment pm = new Payment();
		
		pm.setId(idno);
		pm.setName(name);
		pm.setCreditCNumber(CredNum);
		pm.setSecCode(generatedPassword);
		pm.setExpDate(ExpDate);
		pm.setBname(BName);
		pm.setBemail(BEmail);
		pm.setType(Type);
		pm.setTotprice(no2);
		

		if(Type.equals("express")){
		Express e1 = new Express(no2);
			 result = e1.getTotpts();
		
		
		}else {
			Credit c1 = new Credit(no2);
			 result = c1.getTotpts();
		}
		
		pm.setPts(result);
		System.out.println(result);		
		
			
		try {
 			pd.InsertPayments(pm);
 			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Payment Successfully Recorded!!!');");
			pw.println("</script>");
 			response.sendRedirect("home.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
