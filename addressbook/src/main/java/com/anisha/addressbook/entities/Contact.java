package com.anisha.addressbook.entities;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Contact {

	@Id
	private int id;
	private String firstname;
	private String lastname;
	private String email;
	private int phonenumber;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(int phonenumber) {
		this.phonenumber = phonenumber;
	}

	@Override
	public String toString() {
		return "Contact [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
				+ ", phonenumber=" + phonenumber + "]";
	}
	
	
}
