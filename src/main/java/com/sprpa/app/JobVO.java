package com.sprpa.app;

public class JobVO {
	String name;
    String type;
    String address;
    String salary;
    String deadline; 
    String inquiry_phone;
    double longitude; 
    double latitude;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getInquiry_phone() {
		return inquiry_phone;
	}
	public void setInquiry_phone(String inquiry_phone) {
		this.inquiry_phone = inquiry_phone;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public JobVO(String name, String type, String address, String salary, String deadline, String inquiry_phone,
			double longitude, double latitude) {
		super();
		this.name = name;
		this.type = type;
		this.address = address;
		this.salary = salary;
		this.deadline = deadline;
		this.inquiry_phone = inquiry_phone;
		this.longitude = longitude;
		this.latitude = latitude;
	}
}
