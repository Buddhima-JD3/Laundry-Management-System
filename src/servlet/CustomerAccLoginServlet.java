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
import javax.servlet.http.HttpSession;

import dao.*;
import model.CustomerAccLogin;

/**
 * Servlet implementation class CustomerAccLoginServlet
 */
@WebServlet("/CustomerAccLoginServlet")
public class CustomerAccLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerAccLoginDao CuAccloginDao; 
	private RegisterDao rd;
	private PaymentDao pd;
	
	public void init() {
		CuAccloginDao = new CustomerAccLoginDao();
		rd = new RegisterDao();
		pd = new PaymentDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerAccLoginServlet() {
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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String generatedPassword = null;
		        try {
		            // Create MessageDigest instance for MD5
		            MessageDigest md = MessageDigest.getInstance("MD5");
		            //Add password bytes to digest
		            md.update(password.getBytes());
		            //Get the hash's bytes 
		            byte[] bytes = md.digest();
		            //This bytes[] has bytes in decimal format;
		            //Convert it to hexadecimal format
		            StringBuilder sb = new StringBuilder();
		            for(int i=0; i< bytes.length ;i++)
		            {
		                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
		            }
		            //Get complete hashed password in hex format
		            generatedPassword = sb.toString();
		        } 
		        catch (NoSuchAlgorithmException e) 
		        {
		            e.printStackTrace();
		        }
			CustomerAccLogin loginBean2= new CustomerAccLogin();
			loginBean2.setUsername(username);
			loginBean2.setPassword(generatedPassword);
			try {
				if (CuAccloginDao.validate(loginBean2)) {
					//HttpSession session = request.getSession();
					// session.setAttribute("username",username);
					rd.getSearchRecords(username);
					CuAccloginDao.getTotalPts(username);
					pd.getSearchRecords(username);
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/userprofile.jsp");
					HttpSession session1 = request.getSession();
					session1.setAttribute("user", "user");
					dispatcher.forward(request, response);
				} else {
					
					response.setContentType("text/html");
					PrintWriter pw=response.getWriter();
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert('Invalid Username or Password');");
					pw.println("</script>");
					RequestDispatcher rd=request.getRequestDispatcher("/CustomerAccLogin.jsp");
					rd.include(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
}
