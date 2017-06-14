package com.service.impl;

import java.util.List;

import java.util.Map;

import com.dao.CustomerDao;
import com.entity.Customer;
import com.opensymphony.xwork2.ActionContext;
import com.service.CustomerService;

public class CustomerServiceImpl implements CustomerService {
	private CustomerDao customerDao;
	private CustomerService customerService;
	
	/**
	 * @return the customerService
	 */
	public CustomerService getCustomerService() {
		return customerService;
	}

	/**
	 * @param customerService the customerService to set
	 */
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}

	/**
	 * @return the customerDao
	 */
	public CustomerDao getCustomerDao() {
		return customerDao;
	}

	/**
	 * @param customerDao the customerDao to set
	 */
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	@Override
	public boolean save(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.save(customer);
		System.out.println("CustomerServiceImpl.save()方法被执行");
		return true;
	}

	@Override
	public boolean findAll() {
		// TODO Auto-generated method stub
		List<Customer> list =customerDao.findAll();
		 // 将pageBean存入到值栈中
		System.out.println(list.get(0)+"CustomerServiceImpl");
//        ActionContext.getContext().getValueStack().push(list);
		Map request = (Map) ActionContext.getContext().get("request");     
        request.put("list",list); 
		System.out.println("CustomerServiceImpl.findAll()方法被执行");
		return true;
	}

	@Override
	public boolean update(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.update(customer);
		System.out.println("CustomerServiceImpl.update()方法被执行");
		return true;
	}

	@Override
	public boolean delete(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.delete(customer);
		System.out.println("CustomerServiceImpl.delete()方法被执行");
		return true;
	}

	@Override
	public Customer findByUsernameAndPassword(Customer customer) {
		// TODO Auto-generated method stub
		return customerDao.findByUsernameAndPassword(customer);
	}

	@Override
	public Customer findByCustomerId(String customerId) {
		// TODO Auto-generated method stub
		return  customerDao.findByCustomerId(customerId);
	}

	@Override
	public boolean delete(String customerId) {
		// TODO Auto-generated method stub
		return customerDao.delete(customerId);
	}
	

}
