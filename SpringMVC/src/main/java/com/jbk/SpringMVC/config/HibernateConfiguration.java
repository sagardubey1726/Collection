package com.jbk.SpringMVC.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

import com.jbk.SpringMVC.entity.Employee;

@Configuration
public class HibernateConfiguration {
	
	@Bean
	public DataSource dataSource() {
	
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/ojt_advance_servlet");
		dataSource.setUsername("root");
		dataSource.setPassword("root");
		return dataSource;
	}
	
	@Bean
	public LocalSessionFactoryBean getsessionfactory() {
		
		LocalSessionFactoryBean localSessionFactoryBean=new LocalSessionFactoryBean();
		localSessionFactoryBean.setDataSource(dataSource());
		
		localSessionFactoryBean.setAnnotatedClasses(Employee.class);
		
		Properties hibernateProperties=new Properties();
		hibernateProperties.put("hibernate.show_sql", "true");
		hibernateProperties.put("hibernate.hbm2ddl.autol", "update");
		hibernateProperties.put("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
		
		localSessionFactoryBean.setHibernateProperties(hibernateProperties);
		
		return localSessionFactoryBean;
		
	}
	

}
