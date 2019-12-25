package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TourDAO;
import model.Tour;

/**
 * Servlet implementation class TourTrongNuocController
 */
@WebServlet("/tour-trong-nuoc")
public class TourTrongNuocController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int LIMIT = 10;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TourTrongNuocController() {
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
		String offset = "";
		offset = request.getParameter("page");
		if (offset == null) {
			offset = "0";
		}
		TourDAO tourDAO = new TourDAO();
		int count = tourDAO.getCountTour();
		int countpage = count / 10;
		if (count % 10 != 0) {
			countpage++;
		}
		request.setAttribute("countpage", countpage);
		ArrayList<Tour> listTour = tourDAO.listTour(LIMIT, Integer.parseInt(offset) * 10);
		request.setAttribute("listTour", listTour);	
		RequestDispatcher rd = request.getRequestDispatcher("/tourTrongNuoc.jsp");
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
		String text = request.getParameter("text");
		String tuNgay = request.getParameter("tuNgay");
		String denNgay = request.getParameter("denNgay");
		TourDAO tourDAO = new TourDAO();
		ArrayList<Tour> listTour = tourDAO.search(text, Date.valueOf(tuNgay), Date.valueOf(denNgay));
		request.setAttribute("listTour", listTour);	
		RequestDispatcher rd = request.getRequestDispatcher("/tourTrongNuoc.jsp");
		rd.forward(request, response);
	}

}
