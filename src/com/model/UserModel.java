package com.model;

public class UserModel {
	private String name;
	private String surname;
	private String email;
	private String tel;
	private String pass;
	
	public UserModel(String name,String surname,String email,String pass) {
		this.name=name;
		this.surname=surname;
		this.pass=pass;
		this.email=email;
		this.tel=tel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}


}
