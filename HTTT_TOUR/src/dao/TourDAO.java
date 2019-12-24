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
				tour.setTrongNuoc(rss.getBoolean("trongNuoc"));
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
				tour.setTrongNuoc(rss.getBoolean("trongNuoc"));
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
	
	public ArrayList<Tour> getTrongNuoc(boolean trongNuoc) {
		ArrayList<Tour> list = new ArrayList<>();
		try {
			Connection conn = DbUtils.getConnection();
			String sql = "select * from tour where trongNuo = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setBoolean(1, trongNuoc);
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
				tour.setTrongNuoc(rss.getBoolean("trongNuoc"));
				tour.setTimeTour(rss.getString("timeTour"));
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
				tour.setTrongNuoc(rss.getBoolean("trongNuoc"));
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
