package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServlet() {
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
		
		String nic= request.getParameter("nic");
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String address= request.getParameter("address");
		String phone= request.getParameter("telno");
		String dob= request.getParameter("dob");
		String gender= request.getParameter("gender");

		

		try{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateuserprofile.jsp");
			request.setAttribute("value1",nic);
			request.setAttribute("value2",name);
			request.setAttribute("value3",email);
			request.setAttribute("value4",address);
			request.setAttribute("value5",phone);
			request.setAttribute("value6",dob);

			dispatcher.forward(request, response);
		}catch(Exception e){
			System.out.println(e);
		}
	}
	

}
