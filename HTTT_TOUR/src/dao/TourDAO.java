package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.BookTour;
import model.Tour;
import utils.DbUtils;

public class TourDAO {

	public ArrayList<Tour> getAllTour() {
		ArrayList<Tour> listTour = new ArrayList<>();
		try {
			Connection conn = DbUtils.getConnection();
			String sql = "select * from tour";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				Tour tour = new Tour();
				tour.setIdTour(rss.getInt("id"));
				tour.setImg_Tour(rss.getString("img_tour"));
				tour.setDescription(rss.getString("description"));
				tour.setCustomerSeat(rss.getInt("customer_seat"));
				tour.setVehicle(rss.getString("vehicle"));
				tour.setPrice(rss.getDouble("price"));
				tour.setPriceTreEm(rss.getDouble("price_TreEm"));
				tour.setDateStart(rss.getDate("dateStart"));

				tour.setTimeTour(rss.getString("timeTour"));
				tour.setTourName(rss.getString("tourName"));
				tour.setDiemDen(rss.getString("diemDen"));
				tour.setDiemXuatPhat(rss.getString("diemXuatPhat"));
				listTour.add(tour);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listTour;
	}

	public Tour getTour(int id) {
		Tour tour = new Tour();
		Connection conn = null;
		try {
			conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from tour where id = ?");
			ps.setInt(1, id);
			ResultSet rss = ps.executeQuery();
			if (rss.next()) {
				tour.setIdTour(rss.getInt("id"));
				tour.setImg_Tour(rss.getString("img_tour"));
				tour.setDescription(rss.getString("description"));
				tour.setCustomerSeat(rss.getInt("customer_seat"));
				tour.setVehicle(rss.getString("vehicle"));
				tour.setPrice(rss.getDouble("price"));
				tour.setPriceTreEm(rss.getDouble("price_TreEm"));
				tour.setDateStart(rss.getDate("dateStart"));
				tour.setTimeTour(rss.getString("timeTour"));
				tour.setTourName(rss.getString("tourName"));
				tour.setDiemDen(rss.getString("diemDen"));
				tour.setDiemXuatPhat(rss.getString("diemXuatPhat"));
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		return tour;
	}

	public ArrayList<Tour> sortByView(int limit) {
		ArrayList<Tour> list = new ArrayList<>();
		String sql = "SELECT  DISTINCT * FROM tour ORDER BY luotTruyCap desc LIMIT ?";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, limit);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				Tour tour = new Tour();
				tour.setIdTour(rss.getInt("id"));
				tour.setImg_Tour(rss.getString("img_tour"));
				tour.setDescription(rss.getString("description"));
				tour.setCustomerSeat(rss.getInt("customer_seat"));
				tour.setVehicle(rss.getString("vehicle"));
				tour.setPrice(rss.getDouble("price"));
				tour.setPriceTreEm(rss.getDouble("price_TreEm"));
				tour.setDateStart(rss.getDate("dateStart"));
				tour.setTourName(rss.getString("tourName"));
				tour.setDiemDen(rss.getString("diemDen"));
				tour.setTimeTour(rss.getString("timeTour"));
				tour.setDiemXuatPhat(rss.getString("diemXuatPhat"));
				list.add(tour);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return list;

	}

	public boolean saveTour(Tour tour) {
		boolean result = false;
		Connection conn = null;
		try {
			conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into tour values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, 0);
			ps.setString(2, tour.getImg_Tour());
			ps.setString(3, tour.getDescription());
			ps.setInt(4, tour.getCustomerSeat());
			ps.setString(5, tour.getVehicle());
			ps.setDouble(6, tour.getPrice());
			ps.setDouble(7, tour.getPriceTreEm());
			ps.setDate(8, tour.getDateStart());
			ps.setInt(9, tour.getLuotTruyCap());
			ps.setString(10, tour.getTimeTour());
			ps.setString(11, tour.getTourName());
			ps.setString(12, tour.getDiemDen());
			ps.setString(13, tour.getDiemXuatPhat());
			int kq = ps.executeUpdate();
			if (kq > 0) {
				result = true;
				conn.commit();
			}
		} catch (SQLException ex) {
			try {
				conn.rollback();
			} catch (SQLException e) {

				result = false;
			}
		}

		return result;
	}

	public boolean deleteTour(int id) {
		boolean bl = false;
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("delete from tour where id = ?");
			ps.setInt(1, id);
			int kq = ps.executeUpdate();
			if (kq > 0) {
				bl = true;
				conn.commit();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return bl;
	}

	public ArrayList<Tour> listTour(int limit, int offset) {
		ArrayList<Tour> list = new ArrayList<>();
		String sql = "SELECT * FROM tour LIMIT ? , ?";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, offset);
			ps.setInt(2, limit);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				Tour tour = new Tour();
				tour.setIdTour(rss.getInt("id"));
				tour.setImg_Tour(rss.getString("img_tour"));
				tour.setDescription(rss.getString("description"));
				tour.setCustomerSeat(rss.getInt("customer_seat"));
				tour.setVehicle(rss.getString("vehicle"));
				tour.setPrice(rss.getDouble("price"));
				tour.setPriceTreEm(rss.getDouble("price_TreEm"));
				tour.setDateStart(rss.getDate("dateStart"));
				tour.setTourName(rss.getString("tourName"));
				tour.setDiemDen(rss.getString("diemDen"));
				tour.setDiemXuatPhat(rss.getString("diemXuatPhat"));
				list.add(tour);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return list;

	}

	public int getCountTour() {
		int total = 0;
		String sql = "select count(*) as total from tour";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rss = ps.executeQuery();
			if (rss.next()) {
				total = rss.getInt("total");
			}
		} catch (SQLException e) {

		}
		return total;
	}

	public boolean updateTour(Tour tour) {
		boolean result = false;
		Connection conn = null;
		try {
			conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("update tour set description = ?, "
					+ "customer_seat = ?, vehicle = ?, price= ?, price_treEm = ?, dateStart = ?,"
					+ " timeTour = ?,  tourName = ?,  diemDen = ?, diemXuatPhat = ? where id = ?");
			ps.setString(1, tour.getDescription());
			ps.setInt(2, tour.getCustomerSeat());
			ps.setString(3, tour.getVehicle());
			ps.setDouble(4, tour.getPrice());
			ps.setDouble(5, tour.getPriceTreEm());
			ps.setDate(6, tour.getDateStart());
			ps.setString(7, tour.getTimeTour());
			ps.setString(8, tour.getTourName());
			ps.setString(9, tour.getDiemDen());
			ps.setString(10, tour.getDiemXuatPhat());
			ps.setInt(11, tour.getIdTour());
			int kq = ps.executeUpdate();
			if (kq > 0) {
				result = true;
				conn.commit();

			}
		} catch (SQLException ex) {
			try {
				conn.rollback();
			} catch (SQLException e) {
				result = false;
			}
		}

		return result;
	}

	public boolean addPayTour(BookTour bookTour) {
		boolean result = false;
		Connection conn = null;
		try {
			conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into booktour values(?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, 0);
			ps.setInt(2, bookTour.getSlNguoiLon());
			ps.setInt(3, bookTour.getSlTreNho());
			ps.setString(4, "");
			ps.setDate(5, bookTour.getDateCreate());
			ps.setInt(6, bookTour.getIdTour());
			ps.setInt(7, bookTour.getIdCus());
			ps.setBoolean(8, bookTour.isTrangThai());
			ps.setString(9, bookTour.getCus_address());
			ps.setString(10, bookTour.getCus_address());
			ps.setString(11, bookTour.getCus_phone());
			ps.setString(12, bookTour.getTourName());
			int kq = ps.executeUpdate();
			if (kq > 0) {
				result = true;
				conn.commit();
			}
		} catch (SQLException ex) {
			try {
				conn.rollback();
			} catch (SQLException e) {

				result = false;
			}
		}
		return result;
	}

	public ArrayList<BookTour> getBookTour(int trangThai) {
		ArrayList<BookTour> listBookTour = new ArrayList<>();
		String sql = "SELECT * FROM booktour where trang_thai = ?";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, trangThai);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				BookTour bookTour = new BookTour();
				bookTour.setId(rss.getInt("id"));
				bookTour.setSlNguoiLon(rss.getInt("slNguoiLon"));
				bookTour.setSlTreNho(rss.getInt("slTreNho"));
				bookTour.setNote(rss.getString("note"));
				bookTour.setDateCreate(rss.getDate("date"));
				bookTour.setIdTour(rss.getInt("id_tour"));
				bookTour.setIdCus(rss.getInt("id_customer"));
				bookTour.setTrangThai(rss.getBoolean("trang_thai"));
				bookTour.setCus_name(rss.getString("cus_name"));
				bookTour.setCus_address(rss.getString("cus_address"));
				bookTour.setCus_phone(rss.getString("cus_phone"));
				bookTour.setTourName(rss.getString("tourName"));
				listBookTour.add(bookTour);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return listBookTour;
	}

	public boolean deleteBookTour(int id) {
		boolean bl = false;
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("delete from booktour where id = ?");
			ps.setInt(1, id);
			int kq = ps.executeUpdate();
			if (kq > 0) {
				bl = true;
				conn.commit();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return bl;
	}

	public boolean confirm(int id) {

		boolean bl = false;
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("	update booktour set trang_thai = 1 where id = ?");
			ps.setInt(1, id);
			int kq = ps.executeUpdate();
			if (kq > 0) {
				bl = true;
				conn.commit();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return bl;
	}

	public static void main(String[] args) {
		TourDAO tour = new TourDAO();
		System.out.println(tour.search("Phú Quốc", "2019-01-01", "2019-12-01"));
	}

	public ArrayList<Tour> search(String text, String dateTuNgay, String dateDenNgay) {
		ArrayList<Tour> list = new ArrayList<>();
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn
					.prepareStatement("select * from tour where tourName like ? and dateStart between ? and ? ");
			ps.setString(1, "%" + text + "%");
			ps.setDate(2, Date.valueOf(dateTuNgay));
			ps.setDate(3, Date.valueOf(dateDenNgay));
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				Tour tour = new Tour();
				tour.setIdTour(rss.getInt("id"));
				tour.setImg_Tour(rss.getString("img_tour"));
				tour.setDescription(rss.getString("description"));
				tour.setCustomerSeat(rss.getInt("customer_seat"));
				tour.setVehicle(rss.getString("vehicle"));
				tour.setPrice(rss.getDouble("price"));
				tour.setPriceTreEm(rss.getDouble("price_TreEm"));
				tour.setDateStart(rss.getDate("dateStart"));
				tour.setTourName(rss.getString("tourName"));
				tour.setDiemDen(rss.getString("diemDen"));
				tour.setDiemXuatPhat(rss.getString("diemXuatPhat"));
				list.add(tour);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return list;
	}
}
