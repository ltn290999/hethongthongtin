package controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.TourDAO;
import model.Tour;

/**
 * Servlet implementation class AdminAddTourController
 */
@WebServlet("/admin-add-tour")
public class AdminAddTourController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DATA_DIRECTORY = "D:\\WBN\\hethongthongtin\\HTTT_TOUR\\WebContent\\images";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminAddTourController() {
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
		String edit = request.getParameter("edit");
	
		if (edit == null) {
			RequestDispatcher rd = request.getRequestDispatcher("admin/add.jsp");
			rd.forward(request, response);
		} else {
			TourDAO tourDAO = new TourDAO();
			Tour tour = tourDAO.getTour(Integer.parseInt(edit));
			request.setAttribute("tour", tour);
			RequestDispatcher rd = request.getRequestDispatcher("admin/add.jsp");
			rd.forward(request, response);
		}
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

		FileItemFactory factory = new DiskFileItemFactory();
		// Set factory constraints
		// factory.setSizeThreshold(yourMaxMemorySize);
		// factory.setRepository(yourTempDirectory);
		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		// upload.setSizeMax(yourMaxRequestSize);
		// Parse the request
		List<FileItem> uploadItems = null;
		String name = "";
		String vehicle = "";
		String soCho = "";
		String price = "";
		String priceTreEm = "";
		String ngayXuatPhat = "";
		String thoiGian = "";
		String des = "";
		String diemDen = "";
		String diemXuatPhat = "";
		String img = "";
		String error = "";

		try {
			HashMap<String, String> data = new HashMap<String, String>();
			uploadItems = upload.parseRequest(request);
			for (FileItem uploadItem : uploadItems) {
				if (uploadItem.isFormField()) {
					String fieldName = uploadItem.getFieldName();
					String value = uploadItem.getString();
					data.put(fieldName, value);

				} else {
					String fieldName = uploadItem.getFieldName();
					String fileName = new File(uploadItem.getName()).getName();
					String filePath = DATA_DIRECTORY + File.separator + fileName;
					String path = "img/" + fileName;
					File uploadedFile = new File(filePath);
					data.put(fieldName, path);
					// saves the file to upload director
					uploadItem.write(uploadedFile);
				}
			}
			System.out.println(data.toString());
			for (String fieldName : data.keySet()) {
				switch (fieldName) {
				case "name":
					name = data.get(fieldName);
					break;
				case "vehicle":
					vehicle = data.get(fieldName);
					break;
				case "soCho":
					soCho = data.get(fieldName);
					break;
				case "price":
					price = data.get(fieldName);
					break;
				case "priceTreEm":
					priceTreEm = data.get(fieldName);
					break;
				case "ngayXuatPhat":
					ngayXuatPhat = data.get(fieldName);
					break;
				case "thoiGian":
					thoiGian = data.get(fieldName);
					break;
				case "des":
					des = data.get(fieldName);
					break;
				case "diemDen":
					diemDen = data.get(fieldName);
					break;
				case "diemXuatPhat":
					diemXuatPhat = data.get(fieldName);
					break;
				case "img":
					img = data.get(fieldName);
					break;
				default:
					throw new IllegalArgumentException("Unexpected value: " + fieldName);
				}
			}
			Tour tour = new Tour();
			tour.setIdTour(0);
			tour.setImg_Tour(img);
			tour.setDescription(des);
			tour.setCustomerSeat(Integer.parseInt(soCho));
			tour.setVehicle(soCho);
			tour.setPrice(Double.parseDouble(price));
			tour.setPriceTreEm(Double.parseDouble(priceTreEm));
			tour.setDateStart(Date.valueOf(ngayXuatPhat));

			tour.setTimeTour(thoiGian);
			tour.setTourName(name);
			tour.setDiemDen(diemDen);
			tour.setDiemXuatPhat(diemXuatPhat);
			TourDAO tourDAO = new TourDAO();
			if (tourDAO.saveTour(tour)) {
				response.sendRedirect(request.getContextPath() + "/admin-tour");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
