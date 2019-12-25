package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
				tour.setCustomerSeat(rss.getInt("customer seat"));
				tour.setVehicle(rss.getString("vehicle"));
				tour.setPrice(rss.getDouble("price"));
				tour.setPriceTreEm(rss.getDouble("priceTreEm"));
				tour.setDateStart(rss.getDate("dateStart"));

				tour.setTimeTour(rss.getString("timeTour"));
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
				tour.setCustomerSeat(rss.getInt("customer seat"));
				tour.setVehicle(rss.getString("vehicle"));
				tour.setPrice(rss.getDouble("price"));
				tour.setPriceTreEm(rss.getDouble("priceTreEm"));
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
				tour.setCustomerSeat(rss.getInt("customer seat"));
				tour.setVehicle(rss.getString("vehicle"));
				tour.setPrice(rss.getDouble("price"));
				tour.setPriceTreEm(rss.getDouble("priceTreEm"));
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
		String sql = "SELECT * FROM phone LIMIT ? , ?";
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
				tour.setCustomerSeat(rss.getInt("customer seat"));
				tour.setVehicle(rss.getString("vehicle"));
				tour.setPrice(rss.getDouble("price"));
				tour.setPriceTreEm(rss.getDouble("priceTreEm"));
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
}
