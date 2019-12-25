package model;

import java.sql.Date;

public class BookTour {

	private int id;
	private int slNguoiLon;
	private int slTreNho;
	private String note;
	private Date dateCreate;
	private int idTour;
	private int idCus;
	private boolean trangThai;
	private String cus_name;
	private String cus_address;
	private String cus_phone;
	private String tourName;

	public BookTour() {

	}

	public BookTour(int id, int slNguoiLon, int slTreNho, String note, Date dateCreate, int idTour, int idCus,
			boolean trangThai, String cus_name, String cus_address, String cus_phone, String tourName) {
		super();
		this.id = id;
		this.slNguoiLon = slNguoiLon;
		this.slTreNho = slTreNho;
		this.note = note;
		this.dateCreate = dateCreate;
		this.idTour = idTour;
		this.idCus = idCus;
		this.trangThai = trangThai;
		this.cus_name = cus_name;
		this.cus_address = cus_address;
		this.cus_phone = cus_phone;
		this.tourName = tourName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSlNguoiLon() {
		return slNguoiLon;
	}

	public void setSlNguoiLon(int slNguoiLon) {
		this.slNguoiLon = slNguoiLon;
	}

	public int getSlTreNho() {
		return slTreNho;
	}

	public void setSlTreNho(int slTreNho) {
		this.slTreNho = slTreNho;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Date getDateCreate() {
		return dateCreate;
	}

	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}

	public int getIdTour() {
		return idTour;
	}

	public void setIdTour(int idTour) {
		this.idTour = idTour;
	}

	public int getIdCus() {
		return idCus;
	}

	public void setIdCus(int idCus) {
		this.idCus = idCus;
	}

	public boolean isTrangThai() {
		return trangThai;
	}

	public void setTrangThai(boolean trangThai) {
		this.trangThai = trangThai;
	}

	public String getCus_name() {
		return cus_name;
	}

	public void setCus_name(String cus_name) {
		this.cus_name = cus_name;
	}

	public String getCus_address() {
		return cus_address;
	}

	public void setCus_address(String cus_address) {
		this.cus_address = cus_address;
	}

	public String getCus_phone() {
		return cus_phone;
	}

	public void setCus_phone(String cus_phone) {
		this.cus_phone = cus_phone;
	}

	public String getTourName() {
		return tourName;
	}

	public void setTourName(String tourName) {
		this.tourName = tourName;
	}

	@Override
	public String toString() {
		return "BookTour [id=" + id + ", slNguoiLon=" + slNguoiLon + ", slTreNho=" + slTreNho + ", note=" + note
				+ ", dateCreate=" + dateCreate + ", idTour=" + idTour + ", idCus=" + idCus + ", trangThai=" + trangThai
				+ ", cus_name=" + cus_name + ", cus_address=" + cus_address + ", cus_phone=" + cus_phone + ", tourName="
				+ tourName + "]";
	}

}
