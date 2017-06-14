package com.action;

import java.util.List;

import java.util.Map;

import com.entity.Customer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.CustomerService;

public class CustomerAction extends ActionSupport implements ModelDriven<Customer>{
	private Customer customer =  new Customer();
	
	@Override
	public Customer getModel() {
		// TODO Auto-generated method stub
		return customer;
	}
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
	public String save(){
		    System.out.println("CustomerAction.save()方法被执行");
		    if(customer.getSex().equals("0")){
		    	customer.setSex("女");
		    }else if(customer.getSex().equals("1")){
		    	customer.setSex("男");
		    }else{
		    	customer.setSex("未填写");
		    }
	        customerService.save(customer);
	        return "success";
	}
	public String update(){
			if(customer.getSex().equals("0")){
		    	customer.setSex("女");
		    }else if(customer.getSex().equals("1")){
		    	customer.setSex("男");
		    }else{
		    	customer.setSex("未填写");
		    }
			System.out.println("CustomerAction.update()方法被执行");
			customerService.update(customer);
			return "success";
	}
	public String delete(){
		System.out.println("CustomerAction.delete()方法被执行");
		customerService.delete(customer.getCustomerId());
		return "success";
	}
	public String findAll(){
			System.out.println("CustomerAction.findAll()方法被执行");
			customerService.findAll();
			return "findAll";
	} 

	public String findByCustomerId() {
		System.out.println("CustomerAction.findByCutomerId()被执行");
		Customer c = customerService.findByCustomerId(customer.getCustomerId());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("customer", c);
		return "edit";
	}

	public String login(){
		if(customerService.findByUsernameAndPassword(customer)==null){
			return "input";
		}
		return "success";
	}

}
