package com.service;

import com.entity.Customer;

public interface CustomerService {

	public boolean save(Customer customer);
	public boolean update(Customer customer);
	public boolean delete(Customer customer);
	public boolean delete(String customerId);
	public Customer findByCustomerId(String customerId);
	public boolean findAll();
	public Customer findByUsernameAndPassword(Customer customer);
	
}
