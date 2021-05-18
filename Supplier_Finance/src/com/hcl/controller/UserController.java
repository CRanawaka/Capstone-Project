package com.hcl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hcl.dao.UserDAO;
import com.hcl.model.User;

@Controller
public class UserController {
	@Autowired
	UserDAO userDAO;

	// map for get the client login jsp file
	@RequestMapping("/client-login")
	public String showClientLogin(Model m) {
		m.addAttribute("command", new User());
		return "client-login";
	}

	@RequestMapping("/supplier-login")
	public String showSupplierLogin(Model m) {
		m.addAttribute("command", new User());
		return "supplier-login";
	}

	@RequestMapping("/client-register")
	public String showClientRegister(Model m) {
		m.addAttribute("command", new User());
		return "client-register";
	}

	@RequestMapping("/supplier-register")
	public String showSupplierRegister(Model m) {
		m.addAttribute("command", new User());
		return "supplier-register";
	}

	@RequestMapping("/admin")
	public String showAdmin(Model m) {
		m.addAttribute("command", new User());
		return "admin";
	}

	@RequestMapping(value = "/saveclient", method = RequestMethod.POST)
	public String saveClient(@ModelAttribute("client") User user) {
		userDAO.saveClient(user);
		return "redirect:/client-login";
	}

	@RequestMapping(value = "/savesupplier", method = RequestMethod.POST)
	public String saveSupplier(@ModelAttribute("supplier") User user) {
		userDAO.saveClient(user);
		return "redirect:/supplier-login";
	}

	@RequestMapping(value = "/clientlogin", method = RequestMethod.POST)
	public String checkUserClient(@ModelAttribute("client") User user) {
		userDAO.getUserClient(user.getUsername(), user.getPassword());
		return "client-dashboard";
	}

	@RequestMapping(value = "/supplierlogin", method = RequestMethod.POST)
	public String checkUserSupplier(@ModelAttribute("client") User user) {
		userDAO.getUserSupplier(user.getUsername(), user.getPassword());
		return "supplier-dashboard";
	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String checkAdmin(@ModelAttribute("admin") User user) {
		userDAO.getAdmin(user.getUsername(), user.getPassword());
		return "admin-dashboard";
	}
}
