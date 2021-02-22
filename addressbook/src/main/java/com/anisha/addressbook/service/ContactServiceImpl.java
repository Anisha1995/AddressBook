package com.anisha.addressbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anisha.addressbook.entities.Contact;
import com.anisha.addressbook.repos.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactRepository repository;
	
	@Override
	public Contact saveContact(Contact contact) {
		return repository.save(contact);
	}

	@Override
	public Contact updateContact(Contact contact) {
		return repository.save(contact);
	}

	@Override
	public void deleteContact(Contact contact) {
		repository.delete(contact);
	}

	@Override
	public Contact getContactById(int id) {
		return repository.findById(id).get();
	}

	@Override
	public List<Contact> getAllContacts() {
		return repository.findAll();
	}

	
	
	

}
