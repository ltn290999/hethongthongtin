package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Tour;
import utils.DbUtils;

public class TourDAO {
	public  ArrayList<Tour> getTour() {
		ArrayList<Tour> listTour = new ArrayList<>();
		try {
			Connection conn = DbUtils.getConnection();
			Statement st = conn.createStatement();
			ResultSet rss = st.executeQuery("select * from tour");
			while(rss.next()) {
				Tour tour = new Tour();
				tour.setTour_id(rss.getInt("tour_id"));
				tour.setTour_name(rss.getString("tour_name"));
				tour.setTour_date(rss.getString("tour_date"));
				tour.setTour_people(rss.getInt("tour_people"));
				tour.setTour_hotel(rss.getString("tour_hotel"));
				tour.setTour_price(rss.getDouble("tour_price"));
				tour.setTour_vehicle(rss.getString("tour_vehicle"));
				tour.setTour_place(rss.getString("tour_place"));
				tour.setImg_url(rss.getString("img_url"));
				listTour.add(tour);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listTour;
	}
	
}
