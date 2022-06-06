package com.jbk.SpringMVC.service;

import java.io.Serializable;

import javax.servlet.http.HttpSession;

import com.jbk.SpringMVC.entity.Employee;

public interface EmployeeService {
	
	public Employee loginEmployee(Employee employee);
	public void logout(String value,HttpSession httpSession);
	
	public Serializable addEmployee(Employee employee);
	public Employee profile(String username);
	
	public boolean updateEmployee(Employee employee);
	

}
