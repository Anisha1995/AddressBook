package com.anisha.addressbook.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anisha.addressbook.entities.Contact;

public interface ContactRepository extends JpaRepository<Contact, Integer> {

}
