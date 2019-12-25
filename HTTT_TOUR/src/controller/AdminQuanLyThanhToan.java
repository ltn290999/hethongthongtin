package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TourDAO;
import model.BookTour;

/**
 * Servlet implementation class AdminQuanLyThanhToan
 */
@WebServlet("/admin-thanh-toan")
public class AdminQuanLyThanhToan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminQuanLyThanhToan() {
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
		String delete = request.getParameter("delete");
		String confirm = request.getParameter("confirm");
		TourDAO tourDAO = new TourDAO();
		if (delete == null && confirm == null) {
			ArrayList<BookTour> listBookTour = tourDAO.getBookTour(0);
			request.setAttribute("listBookTour", listBookTour);
			RequestDispatcher rd = request.getRequestDispatcher("admin/quanlythanhtoan.jsp");
			rd.forward(request, response);
		} else if (delete != null && confirm == null) {
			if (tourDAO.deleteBookTour(Integer.parseInt(delete))) {
				response.sendRedirect(request.getContextPath() + "/admin-thanh-toan");
			}
		} else {
			if (tourDAO.confirm(Integer.parseInt(confirm))) {
				response.sendRedirect(request.getContextPath() + "/admin-thanh-toan");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
