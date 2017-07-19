package com.air2u.manage.model;

import java.util.Date;

import com.air2u.manage.entity.Customer;

public class CustomerModel {
	
	private Integer inputId;
	
	private String inputName;
	
	private String inputCustomerCode;
	
	private String inputTel;
	
	private String inputEmail;
	
	private String inputAddress;

	
	public Integer getInputId() {
		return inputId;
	}

	public void setInputId(Integer inputId) {
		this.inputId = inputId;
	}

	public String getInputName() {
		return inputName;
	}

	public void setInputName(String inputName) {
		this.inputName = inputName;
	}

	public String getInputCustomerCode() {
		return inputCustomerCode;
	}

	public void setInputCustomerCode(String inputCustomerCode) {
		this.inputCustomerCode = inputCustomerCode;
	}

	public String getInputTel() {
		return inputTel;
	}

	public void setInputTel(String inputTel) {
		this.inputTel = inputTel;
	}

	public String getInputEmail() {
		return inputEmail;
	}

	public void setInputEmail(String inputEmail) {
		this.inputEmail = inputEmail;
	}

	public String getInputAddress() {
		return inputAddress;
	}

	public void setInputAddress(String inputAddress) {
		this.inputAddress = inputAddress;
	}
	
	public Customer toCustomer(CustomerModel model){
		Customer customer = new Customer();
		customer.setId(model.getInputId());
		customer.setCustomerName(model.getInputName());
		customer.setCustomerCodename(model.getInputCustomerCode());
		customer.setTel(model.getInputTel());
		customer.setEmail(model.getInputEmail());
		customer.setAddress(model.getInputAddress());
		customer.setCreatetime(new Date());
		return customer;
	}
}
