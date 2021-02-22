package com.anisha.addressbook.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.anisha.addressbook.entities.Contact;
import com.anisha.addressbook.service.ContactService;

@Controller
public class ContactControllers {
	
	@Autowired
	ContactService service;
	
	@RequestMapping("/showCreate")
	public String showCreate()
	{
		System.out.println("testing");
		return "createContact";
	}

	
	@RequestMapping("/savCont")
	public String savContact(@ModelAttribute("contact") Contact contact, ModelMap modelmap)
	{
		Contact contactsaved = service.saveContact(contact);
		String msg= "Contact saved with id:" +contactsaved.getId();
		modelmap.addAttribute("msg", msg);
		return "createContact";
	}
	
	@RequestMapping("/displayContacts")
	public String displayContacts(ModelMap modelMap) {
		List<Contact> contacts = service.getAllContacts();
		modelMap.addAttribute("contacts", contacts);
		return "displayContacts";
	}

	@RequestMapping("/deleteContact")
	public String deleteLocation(@RequestParam("id")int id, ModelMap modelMap) {
		Contact contact = service.getContactById(id);
		service.deleteContact(contact);
		List<Contact> contacts = service.getAllContacts();
		modelMap.addAttribute("contacts", contacts);
		return "displayContacts";
		
	}
	
	@RequestMapping("/showUpdate")
	public String updateContact(@RequestParam("id")int id, ModelMap modelMap)
	{
		Contact contact = service.getContactById(id);
		modelMap.addAttribute("contact", contact);
		return "updateContact";
	}
	
	@RequestMapping("/updateCont")
	public String updateContact(@ModelAttribute("contact") Contact contact, ModelMap modelMap)
	{
		service.updateContact(contact);
		List<Contact> contacts = service.getAllContacts();
		modelMap.addAttribute("contacts", contacts);
		return "displayContacts";
	}
}
