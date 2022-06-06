package com.jbk.SpringMVC.service;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.SpringMVC.dao.EmployeeDao;
import com.jbk.SpringMVC.entity.Employee;

@Service
public class EmployeeService_impl implements EmployeeService{
	
	@Autowired
	private EmployeeDao dao;

	@Override
	public Employee loginEmployee(Employee employee) {
		
	Employee emp=	dao.loginEmployee(employee);
		
		return emp;
	}

	@Override
	public void logout(String value, HttpSession httpSession) {
		
	 int rows=	dao.logout(value);
	 if(rows>0) {
		 httpSession.invalidate();
	 }
		
		
	}

	@Override
	public Serializable addEmployee(Employee employee) {
	String	eid = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
	employee.setId(eid);
		
	Serializable id=	dao.addEmployee(employee);
		return id;
	}

	@Override
	public Employee profile(String username) {
	Employee employee=	dao.profile(username);
		
		return employee;
	}

	@Override
	public boolean updateEmployee(Employee employee) {
		
	boolean b=	dao.updateEmployee(employee);
		return b;
	}

}
