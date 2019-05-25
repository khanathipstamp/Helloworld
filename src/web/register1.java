package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.print.DocFlavor.STRING;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register1
 */
@WebServlet("/register1")
public class register1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out = response.getWriter();

		System.out.println("Server  OK");
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("surname"));
		System.out.println(request.getParameter("lastname"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("tel"));

		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		char[] ch=email.toCharArray();
		boolean t=true;
		 for (int i = 0; i <ch.length; i++) {
			if (ch[i]=='@') {
				t=true;
			}
			else {
				t=false;
			}
		}
		if (t=true) {
			out.println("Register Sucess : "+ request.getParameter("email"));
		}
		else {
			out.println("Register fail : "+ request.getParameter("email"));
		}
		
	

	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public register1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);

	}

}
