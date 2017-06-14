package com.dao;

import java.util.List;
import com.entity.Customer;

public interface CustomerDao {
	public boolean update(Customer customer);
	public boolean delete(Customer customer);
	public boolean delete(String customerId);
	public boolean save(Customer customer);
	public Customer findByCustomerId(String customerId);
	public int findCount();
	public List<Customer> findAll();
	public Customer findByUsernameAndPassword(Customer customer);
	
}
