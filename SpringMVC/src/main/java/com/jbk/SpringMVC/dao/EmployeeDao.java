package com.jbk.SpringMVC.dao;

import java.io.Serializable;

import com.jbk.SpringMVC.entity.Employee;

public interface EmployeeDao {

	public Employee loginEmployee(Employee employee);

	public int logout(String value);

	public Serializable addEmployee(Employee employee);

	public Employee profile(String username);
	
	public boolean updateEmployee(Employee employee);

}
