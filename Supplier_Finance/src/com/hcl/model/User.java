package com.hcl.model;

public class User {
	// initialize variables
	private String username;
	private String password;
	private String name;
	private String address;
	private String city;
	private String state;
	private String province;
	private String country;
	private String email;
	private String mobile;
	private String loanNo;
	private String loanInfo;
	private String creditNo;
	private String creditInfo;

	/* Constructor implementation */

	// zero argument constructor
	public User() {
	}

	// constructor for client
	public void UserClient(String username, String password, String name,
			String address, String city, String state, String province,
			String country, String email, String mobile, String loanNo,
			String loanInfo) {
		this.username = username;
		this.password = password;
		this.name = name;
		this.address = address;
		this.city = city;
		this.state = state;
		this.province = province;
		this.country = country;
		this.email = email;
		this.mobile = mobile;
		this.loanNo = loanNo;
		this.loanInfo = loanInfo;
	}

	// constructor for supplier
	public void UserSupplier(String username1, String password1, String name1,
			String address1, String city1, String state1, String province1,
			String country1, String email1, String mobile1, String creditNo,
			String creditInfo) {
		this.username = username1;
		this.password = password1;
		this.name = name1;
		this.address = address1;
		this.city = city1;
		this.state = state1;
		this.province = province1;
		this.country = country1;
		this.email = email1;
		this.mobile = mobile1;
		this.creditNo = creditNo;
		this.creditInfo = creditInfo;
	}

	/* getters and setters */

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getLoanNo() {
		return loanNo;
	}

	public void setLoanNo(String loanNo) {
		this.loanNo = loanNo;
	}

	public String getLoanInfo() {
		return loanInfo;
	}

	public void setLoanInfo(String loanInfo) {
		this.loanInfo = loanInfo;
	}

	public String getCreditNo() {
		return creditNo;
	}

	public void setCreditNo(String creditNo) {
		this.creditNo = creditNo;
	}

	public String getCreditInfo() {
		return creditInfo;
	}

	public void setCreditInfo(String creditInfo) {
		this.creditInfo = creditInfo;
	}
}
