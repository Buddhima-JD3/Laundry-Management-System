package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RegisterDao;
import model.PackageSelectors;
import model.RegisteredCustomers;

/**
 * Servlet implementation class UpdateUserProfileServlet
 */
@WebServlet("/UpdateUserProfileServlet")
public class UpdateUserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RegisterDao rd;
    
	
	public void init() {
		rd = new RegisterDao();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserProfileServlet() {
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
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String nic = request.getParameter("id");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("bdate");
		String tel = request.getParameter("phone");
		int tel1 = Integer.parseInt(tel);
	

		
		RegisteredCustomers rc = new RegisteredCustomers();
		
		rc.setName(name);
		rc.setAddress(address);
		rc.setDOB(dob);
		rc.setEmail(email);
		rc.setNIC(nic);
		rc.setTel(tel1);
		rc.setGender(gender);
		
	
		try {
 			rd.updatedetails(name,address,dob,email,nic,tel1,gender);
			PrintWriter pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Profile Successfully Updated!!!');");
			pw.println("</script>");
 			response.sendRedirect("CustomerAccLogin.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
