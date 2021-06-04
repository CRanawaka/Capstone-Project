package com.hcl.dao;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.hcl.model.User;

public class UserDAO {
	JdbcTemplate jdbcTemplate;

	public void setTemplate(JdbcTemplate template) {
		this.jdbcTemplate = template;
	}

	public int saveClient(User user) {
		String sql = "INSERT INTO user_customer (Username, Password, Name, Address, City, State, Province, Country, Email, Mobile, Loan_no, Loan_info) VALUES ('"
				+ user.getUsername()
				+ "', '"
				+ user.getPassword()
				+ "', '"
				+ user.getName()
				+ "', '"
				+ user.getAddress()
				+ "', '"
				+ user.getCity()
				+ "', '"
				+ user.getState()
				+ "', '"
				+ user.getProvince()
				+ "', '"
				+ user.getCountry()
				+ "', '"
				+ user.getEmail()
				+ "', '"
				+ user.getMobile()
				+ "', '"
				+ user.getLoanNo() + "', '" + user.getLoanInfo() + "')";
		return jdbcTemplate.update(sql);
	}

	public int saveSupplier(User user) {
		String sql = "INSERT INTO user_supplier (Username, Password, Name, Address, City, State, Province, Country, Email, Mobile, Credit_no, Credit_info) VALUES ('"
				+ user.getUsername()
				+ "', '"
				+ user.getPassword()
				+ "', '"
				+ user.getName()
				+ "', '"
				+ user.getAddress()
				+ "', '"
				+ user.getCity()
				+ "', '"
				+ user.getState()
				+ "', '"
				+ user.getProvince()
				+ "', '"
				+ user.getCountry()
				+ "', '"
				+ user.getEmail()
				+ "', '"
				+ user.getMobile()
				+ "', '"
				+ user.getCreditNo() + "', '" + user.getCreditInfo() + "')";
		return jdbcTemplate.update(sql);
	}

	public boolean getUserClient(String username, String password) {
		String sql = "SELECT username, password FROM user_customer WHERE username = ? AND password = ?";
		boolean user;
		try {
			jdbcTemplate.queryForObject(sql,
					new Object[] { username, password },
					new BeanPropertyRowMapper<User>(User.class));
			user = true;
		} catch (EmptyResultDataAccessException e) {
			user = false;
		}

		return user;
	}

	public boolean getUserSupplier(String username, String password) {
		String sql = "SELECT username, password FROM user_supplier WHERE username = ? AND password = ?";
		boolean user;
		try {
			jdbcTemplate.queryForObject(sql,
					new Object[] { username, password },
					new BeanPropertyRowMapper<User>(User.class));
			user = true;
		} catch (EmptyResultDataAccessException e) {
			user = false;
		}

		return user;
	}

	public boolean getAdmin(String username, String password) {
		String sql = "SELECT username, password FROM user_admin WHERE username = ? AND password = ?";
		boolean user;
		try {
			jdbcTemplate.queryForObject(sql,
					new Object[] { username, password },
					new BeanPropertyRowMapper<User>(User.class));
			user = true;
		} catch (EmptyResultDataAccessException e) {
			user = false;
		}

		return user;
	}
}
