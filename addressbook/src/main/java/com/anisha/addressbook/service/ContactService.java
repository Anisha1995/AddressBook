package com.anisha.addressbook.service;

import java.util.List;

import com.anisha.addressbook.entities.Contact;

public interface ContactService {
	
	Contact saveContact(Contact contact);

	Contact updateContact(Contact contact);

	void deleteContact(Contact contact);

	Contact getContactById(int id);

	List<Contact> getAllContacts();

}
