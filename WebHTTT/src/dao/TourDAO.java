package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Tour;
import utils.DbUtils;

public class TourDAO {
	public ArrayList<Tour> getTour() {
		ArrayList<Tour> listTour = new ArrayList<>();
		try {
			Connection conn = DbUtils.getConnection();
			Statement st = conn.createStatement();
			ResultSet rss = st.executeQuery("select * from tour");
			while(rss.next()) {
				Tour tour = new Tour();
				tour.setTour_id(rss.getInt("tour_id"));
				tour.setTour_name(rss.getString("tour_name"));
				tour.setTour_des(rss.getString("tour_des"));
				tour.setTour_price(rss.getDouble("tour_price"));
				tour.setTour_vehicle(rss.getString("tour_vehicle"));
				tour.setImg_url(rss.getString("img_url"));
				listTour.add(tour);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listTour;
	}
}
