package model;

public class Tour {
	private String name;
	private String id;
	private String imgURL;
	private double priceofTour;
	public Tour() {
	}
	public Tour(String name, String id, String imgURL, double priceofTour) {
		this.name = name;
		this.id = id;
		this.imgURL = imgURL;
		this.priceofTour = priceofTour;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImgURL() {
		return imgURL;
	}
	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}
	public double getPriceofTour() {
		return priceofTour;
	}
	public void setPriceofTour(double priceofTour) {
		this.priceofTour = priceofTour;
	}
	
}
