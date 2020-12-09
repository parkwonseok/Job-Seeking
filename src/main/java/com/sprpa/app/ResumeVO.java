package com.sprpa.app;

public class ResumeVO {
	String file_name;
	String name;
	String phone;
	public ResumeVO(String file_name, String name, String phone) {
		super();
		this.file_name = file_name;
		this.name = name;
		this.phone = phone;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
