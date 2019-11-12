package model;

public class Tour {
	private int tour_id;
	private String tour_name;
	private double tour_price;
	private int tour_people;
	private String tour_date;
	private String tour_hotel;
	private String tour_vehicle;
	private String tour_place;
	private String img_url;
	private boolean tour_insite;

	public Tour() {

	}

	public Tour(int tour_id, String tour_name, double tour_price, int tour_people, String tour_date, String tour_hotel,
			String tour_vehicle, String tour_place, String img_url, boolean tour_insite) {
		super();
		this.tour_id = tour_id;
		this.tour_name = tour_name;
		this.tour_price = tour_price;
		this.tour_people = tour_people;
		this.tour_date = tour_date;
		this.tour_hotel = tour_hotel;
		this.tour_vehicle = tour_vehicle;
		this.tour_place = tour_place;
		this.img_url = img_url;
		this.tour_insite = tour_insite;
	}

	public int getTour_id() {
		return tour_id;
	}

	public String getTour_name() {
		return tour_name;
	}

	public double getTour_price() {
		return tour_price;
	}

	public int getTour_people() {
		return tour_people;
	}

	public String getTour_date() {
		return tour_date;
	}

	public String getTour_hotel() {
		return tour_hotel;
	}

	public String getTour_vehicle() {
		return tour_vehicle;
	}

	public String getTour_place() {
		return tour_place;
	}

	public String getImg_url() {
		return img_url;
	}

	public boolean isTour_insite() {
		return tour_insite;
	}

	public void setTour_id(int tour_id) {
		this.tour_id = tour_id;
	}

	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}

	public void setTour_price(double tour_price) {
		this.tour_price = tour_price;
	}

	public void setTour_people(int tour_people) {
		this.tour_people = tour_people;
	}

	public void setTour_date(String tour_date) {
		this.tour_date = tour_date;
	}

	public void setTour_hotel(String tour_hotel) {
		this.tour_hotel = tour_hotel;
	}

	public void setTour_vehicle(String tour_vehicle) {
		this.tour_vehicle = tour_vehicle;
	}

	public void setTour_place(String tour_place) {
		this.tour_place = tour_place;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public void setTour_insite(boolean tour_insite) {
		this.tour_insite = tour_insite;
	}

	@Override
	public String toString() {
		return "Tour [tour_id=" + tour_id + ", tour_name=" + tour_name + ", tour_price=" + tour_price + ", tour_people="
				+ tour_people + ", tour_date=" + tour_date + ", tour_hotel=" + tour_hotel + ", tour_vehicle="
				+ tour_vehicle + ", tour_place=" + tour_place + ", img_url=" + img_url + ", tour_insite=" + tour_insite
				+ "]";
	}

}