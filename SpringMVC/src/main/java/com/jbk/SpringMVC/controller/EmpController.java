package com.jbk.SpringMVC.controller;

import java.io.Serializable;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.parsing.EmptyReaderEventListener;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jbk.SpringMVC.entity.Employee;
import com.jbk.SpringMVC.service.EmployeeService;

@Controller
public class EmpController {

	@Autowired
	private EmployeeService service;

	@RequestMapping(value = "/")
	public String indexPage() {

		return "index";
	}

	@RequestMapping(value = "/addEmployeePage")
	public String addEmployeePage() {

		return "addEmployee";
	}

	@GetMapping(value = "/loginEmployee")
	public ModelAndView loginEmployee(@ModelAttribute Employee employee, HttpSession httpSession) {
		Employee emp = service.loginEmployee(employee);

		if (emp != null) {
			httpSession.setAttribute("username", emp.getUsername());
			httpSession.setAttribute("type", emp.getType());
			return new ModelAndView("home");
		} else {

			return new ModelAndView("index", "msg", "invalid Crendiantials !!!");
		}

	}

	@GetMapping(value = "/logout")
	public ModelAndView logout(HttpSession httpSession) {

		String username = (String) httpSession.getAttribute("username");

		service.logout(username, httpSession);

		return new ModelAndView("index", "msg", "Logout Successfullly !!");

	}

	@PostMapping(value = "/addEmployee")
	public ModelAndView addEmployee(@ModelAttribute Employee employee) {

		Serializable id = service.addEmployee(employee);

		return new ModelAndView("addEmployee", "msg", "Saved Successfully !! ");

	}
	
	@GetMapping(value="/profile")
	public ModelAndView profile(@RequestParam String username,@RequestParam String msg,Model model ) {
		
	Employee employee=	service.profile(username);
	if(!msg.equals("null"))
		model.addAttribute("msg", msg);
	
	model.addAttribute("employee",employee);
	return new ModelAndView("profile");
		
	
	}
	
	@PostMapping(value="/updateEmployee")
	public String updateEmployee(@ModelAttribute Employee employee) {
	boolean	b=service.updateEmployee(employee);
	if(b=true) {
		return "redirect:/profile?msg=Profile Updated&username="+employee.getUsername();
	}else {
		return "redirect:/profile?msg=Profile Not Updated&username="+employee.getUsername();
	}
		
	
		
	}
	

}
