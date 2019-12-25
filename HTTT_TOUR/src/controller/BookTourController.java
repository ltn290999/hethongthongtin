package controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BookTour;
import model.Tour;
import model.UserModel;

/**
 * Servlet implementation class ServiceController
 */
@WebServlet("/book-tour")
public class BookTourController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookTourController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("bookTour.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String slNguoiLon = request.getParameter("slNguoiLon");
		String slTreEm = request.getParameter("slTreNho");
		String sdt = request.getParameter("sdt");
		String name = request.getParameter("name");
		String address= request.getParameter("address");
		if (slTreEm.isEmpty()) {
			slTreEm = "0";
		}
		int nguoiLon = Integer.parseInt(slNguoiLon);
		int treEm = Integer.parseInt(slTreEm);
		int result = nguoiLon + treEm;
		HttpSession session = request.getSession();
		Tour tour = (Tour) session.getAttribute("tour");
		String error ="";
		if ( (result > tour.getCustomerSeat()) && checkPhone(sdt)) {
			if(result > tour.getCustomerSeat())
			 error = "";
			else{
				error="";
			}
			request.setAttribute("error", error);
			RequestDispatcher rd = request.getRequestDispatcher("bookTour.jsp");
			rd.forward(request, response);
		} else {
			UserModel user = (UserModel) session.getAttribute("user");
			user.setUser_fullname(name);
			user.setPhone(sdt);
			user.setAddress(address);
			session.setAttribute("user", user);
			long millis = System.currentTimeMillis();
			java.sql.Date dateCreate = new java.sql.Date(millis);
			BookTour bookTour = new BookTour(0, nguoiLon, treEm, "", dateCreate, tour.getIdTour(), user.getUser_id(), false, name, address, sdt);
			session.setAttribute("bookTour", bookTour);
			response.sendRedirect(request.getContextPath()+"/thanh-toan");
			
		}

	}

	private boolean checkPhone(String phone) {
		Pattern pattern = Pattern.compile("^[0-9]*$");
		Matcher matcher = pattern.matcher(phone);
		if (!matcher.matches()) {
			return false;
		} else if (phone.length() == 10) {
			if (phone.substring(0, 1).equals("0")) {
				return true;
			} else {
				return false;
			}

		}
		return false;
	}
}
