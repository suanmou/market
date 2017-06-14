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
		    System.out.println("CustomerAction.save()������ִ��");
		    if(customer.getSex().equals("0")){
		    	customer.setSex("Ů");
		    }else if(customer.getSex().equals("1")){
		    	customer.setSex("��");
		    }else{
		    	customer.setSex("δ��д");
		    }
	        customerService.save(customer);
	        return "success";
	}
	public String update(){
			if(customer.getSex().equals("0")){
		    	customer.setSex("Ů");
		    }else if(customer.getSex().equals("1")){
		    	customer.setSex("��");
		    }else{
		    	customer.setSex("δ��д");
		    }
			System.out.println("CustomerAction.update()������ִ��");
			customerService.update(customer);
			return "success";
	}
	public String delete(){
		System.out.println("CustomerAction.delete()������ִ��");
		customerService.delete(customer.getCustomerId());
		return "success";
	}
	public String findAll(){
			System.out.println("CustomerAction.findAll()������ִ��");
			customerService.findAll();
			return "findAll";
	} 

	public String findByCustomerId() {
		System.out.println("CustomerAction.findByCutomerId()��ִ��");
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
