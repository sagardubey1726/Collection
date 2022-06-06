package com.jbk.SpringMVC.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbk.SpringMVC.entity.Employee;

@Repository
public class EmployeeDao_impl implements EmployeeDao {

	@Autowired
	private SessionFactory sf;

	@Override
	public Employee loginEmployee(Employee employee) {
		Employee emp = null;
		try {
			Session session = sf.openSession();
			Transaction transaction = session.beginTransaction();
			Query<Employee> query = session.createQuery("FROM Employee WHERE username=: uname and password=: pass");
			query.setParameter("uname", employee.getUsername());
			query.setParameter("pass", employee.getPassword());
			List<Employee> list = query.getResultList();

			if (!list.isEmpty()) {
				emp = list.get(0);
				emp.setStatus("active");
				session.update(emp);
				transaction.commit();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return emp;
	}

	@Override
	public int logout(String value) {

		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();

		Query<Employee> query = session.createQuery("UPDATE Employee SET status=:status WHERE username=: username");

		query.setParameter("status", "inactive");
		query.setParameter("username", value);
		int rows = query.executeUpdate();
		transaction.commit();

		return rows;
	}

	@Override
	public Serializable addEmployee(Employee employee) {
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();

		Serializable id = session.save(employee);
		transaction.commit();

		return id;
	}

	@Override
	public Employee profile(String username) {

		Session session = sf.openSession();
		Criteria criteria = session.createCriteria(Employee.class);
		List<Employee> list = criteria.add(Restrictions.eq("username", username)).list();

		Employee employee = list.get(0);

		return employee;
	}

	@Override
	public boolean updateEmployee(Employee employee) {
		boolean b = false;
		try {
			Session session = sf.openSession();
			Transaction transaction = session.beginTransaction();
			session.update(employee);
			transaction.commit();
			b=true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return b;
	}

}
