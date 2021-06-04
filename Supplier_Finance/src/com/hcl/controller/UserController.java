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

	@RequestMapping("/admin-login")
	public String showAdmin(Model m) {
		m.addAttribute("command", new User());
		return "admin-login";
	}

	@RequestMapping(value = "/saveclient", method = RequestMethod.POST)
	public String saveClient(@ModelAttribute("client") User user, Model m) {
		userDAO.saveClient(user);
		m.addAttribute("msg", "success");
		return "redirect:/client-login";
	}

	@RequestMapping(value = "/savesupplier", method = RequestMethod.POST)
	public String saveSupplier(@ModelAttribute("supplier") User user, Model m) {
		userDAO.saveSupplier(user);
		m.addAttribute("msg", "success");
		return "redirect:/supplier-login";
	}

	@RequestMapping(value = "/clientlogin", method = RequestMethod.POST)
	public String checkUserClient(@ModelAttribute("clientLogin") User user,
			Model m) {
		String msg = "";
		if (userDAO.getUserClient(user.getUsername(), user.getPassword())) {
			msg = "client-dashboard";
		} else {
			m.addAttribute("msg", "client");
			msg = "redirect:/client-login";
		}
		return msg;
	}

	@RequestMapping(value = "/supplierlogin", method = RequestMethod.POST)
	public String checkUserSupplier(@ModelAttribute("supplierLogin") User user,
			Model m) {
		String msg = "";
		if (userDAO.getUserSupplier(user.getUsername(), user.getPassword())) {
			msg = "supplier-dashboard";
		} else {
			m.addAttribute("msg", "supplier");
			msg = "redirect:/supplier-login";
		}
		return msg;
	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String checkAdmin(@ModelAttribute("adminLogin") User user, Model m) {
		String msg = "";
		if (userDAO.getAdmin(user.getUsername(), user.getPassword())) {
			msg = "admin-dashboard";
		} else {
			m.addAttribute("msg", "admin");
			msg = "redirect:/admin-login";
		}
		return msg;
	}
}
