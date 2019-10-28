package model;

public class Tour {
	private int tour_id;
	private String tour_name;
	private String tour_des;
	private double tour_price;
	private String tour_vehicle;
	private String img_url;
	public Tour() {
	
	}
	public Tour(int tour_id, String tour_name, String tour_des, double tour_price, String tour_vehicle,
			String img_url) {
		super();
		this.tour_id = tour_id;
		this.tour_name = tour_name;
		this.tour_des = tour_des;
		this.tour_price = tour_price;
		this.tour_vehicle = tour_vehicle;
		this.img_url = img_url;
	}
	public int getTour_id() {
		return tour_id;
	}
	public void setTour_id(int tour_id) {
		this.tour_id = tour_id;
	}
	public String getTour_name() {
		return tour_name;
	}
	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}
	public String getTour_des() {
		return tour_des;
	}
	public void setTour_des(String tour_des) {
		this.tour_des = tour_des;
	}
	public double getTour_price() {
		return tour_price;
	}
	public void setTour_price(double tour_price) {
		this.tour_price = tour_price;
	}
	public String getTour_vehicle() {
		return tour_vehicle;
	}
	public void setTour_vehicle(String tour_vehicle) {
		this.tour_vehicle = tour_vehicle;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	@Override
	public String toString() {
		return "Tour [tour_id=" + tour_id + ", tour_name=" + tour_name + ", tour_des=" + tour_des + ", tour_price="
				+ tour_price + ", tour_vehicle=" + tour_vehicle + ", img_url=" + img_url + "]";
	}
	

}
