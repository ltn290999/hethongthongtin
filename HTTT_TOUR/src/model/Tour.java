	package model;

import java.sql.Date;

public class Tour {

	private int idTour;
	private String img_Tour;
	private String description;
	private int customerSeat;
	private String vehicle;
	private double price;
	private double priceTreEm;
	private Date dateStart;
	
	private int luotTruyCap;
	private String timeTour;
	private String tourName;
	private String diemDen;
	private String diemXuatPhat;
	
	public Tour() {

	}


	public Tour(int idTour, String img_Tour, String description, int customerSeat, String vehicle, double price,
			double priceTreEm, Date dateStart, int luotTruyCap, String timeTour, String tourName, String diemDen,
			String diemXuatPhat) {
		super();
		this.idTour = idTour;
		this.img_Tour = img_Tour;
		this.description = description;
		this.customerSeat = customerSeat;
		this.vehicle = vehicle;
		this.price = price;
		this.priceTreEm = priceTreEm;
		this.dateStart = dateStart;
		this.luotTruyCap = luotTruyCap;
		this.timeTour = timeTour;
		this.tourName = tourName;
		this.diemDen = diemDen;
		this.diemXuatPhat = diemXuatPhat;
	}


	public int getIdTour() {
		return idTour;
	}

	public void setIdTour(int idTour) {
		this.idTour = idTour;
	}

	public String getImg_Tour() {
		return img_Tour;
	}

	public void setImg_Tour(String img_Tour) {
		this.img_Tour = img_Tour;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getCustomerSeat() {
		return customerSeat;
	}

	public void setCustomerSeat(int customerSeat) {
		this.customerSeat = customerSeat;
	}

	public String getVehicle() {
		return vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getPriceTreEm() {
		return priceTreEm;
	}

	public void setPriceTreEm(double priceTreEm) {
		this.priceTreEm = priceTreEm;
	}

	public Date getDateStart() {
		return dateStart;
	}

	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}

	@Override
	public String toString() {
		return "Tour [idTour=" + idTour + ", img_Tour=" + img_Tour + ", description=" + description + ", customerSeat="
				+ customerSeat + ", vehicle=" + vehicle + ", price=" + price + ", priceTreEm=" + priceTreEm
				+ ", dateStart=" + dateStart + "]";
	}

	public String getSummary() {
		String kq = description.replaceAll("\\<.*?>", "");
		return kq;
	}

	
	public int getLuotTruyCap() {
		return luotTruyCap;
	}

	public void setLuotTruyCap(int luotTruyCap) {
		this.luotTruyCap = luotTruyCap;
	}


	public String getTimeTour() {
		return timeTour;
	}


	public void setTimeTour(String timeTour) {
		this.timeTour = timeTour;
	}


	public String getTourName() {
		return tourName;
	}


	public void setTourName(String tourName) {
		this.tourName = tourName;
	}


	public String getDiemDen() {
		return diemDen;
	}


	public void setDiemDen(String diemDen) {
		this.diemDen = diemDen;
	}


	public String getDiemXuatPhat() {
		return diemXuatPhat;
	}


	public void setDiemXuatPhat(String diemXuatPhat) {
		this.diemXuatPhat = diemXuatPhat;
	}

}
