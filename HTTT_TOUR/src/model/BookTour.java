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
	
	public BookTour() {
		
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
	
}
