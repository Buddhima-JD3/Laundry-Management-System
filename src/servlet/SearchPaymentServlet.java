package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PaymentDao;

/**
 * Servlet implementation class SearchPaymentServlet
 */
@WebServlet("/SearchPaymentServlet")
public class SearchPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PaymentDao pd;
	
	public void init() {
		pd = new PaymentDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPaymentServlet() {
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
		
		String email= request.getParameter("search");
		try{
			pd.getSearchRecords(email);
			response.sendRedirect("adminpayments.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
