package com.action;
 
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.entity.Admin;
import com.entity.Customer;
import com.entity.Dealing;
import com.entity.Good;
import com.entity.Inshop;
import com.entity.Supplier;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.AdminService;
import com.service.CustomerService;
import com.service.DealingService;
import com.service.GoodService;

public class DealingAction  extends ActionSupport {
	private Dealing  dealing ;
	private Customer customer;
	private Good good;
	private Admin admin;
	private DealingService dealingService;
	private CustomerService customerService;
	private AdminService adminService;
	private GoodService goodService;
	Map request = (Map) ActionContext.getContext().get("request"); 
	 
	/**
	 * @return the goodService
	 */
	public GoodService getGoodService() {
		return goodService;
	}
	/**
	 * @param goodService the goodService to set
	 */
	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}
	
	
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
	 * @return the adminService
	 */
	public AdminService getAdminService() {
		return adminService;
	}
	/**
	 * @param adminService the adminService to set
	 */
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	/**
	 * @return the good
	 */
	public Good getGood() {
		return good;
	}
	/**
	 * @param good the good to set
	 */
	public void setGood(Good good) {
		this.good = good;
	}
	/**
	 * @return the dealingService
	 */
	public DealingService getDealingService() {
		return dealingService;
	}
	/**
	 * @param dealingService the dealingService to set
	 */
	public void setDealingService(DealingService dealingService) {
		this.dealingService = dealingService;
	}
	/**
	 * @return the dealing
	 */
	public Dealing getDealing() {
		return dealing;
	}
	/**
	 * @param dealing the dealing to set
	 */
	public void setDealing(Dealing dealing) {
		this.dealing = dealing;
	}
	/**
	 * @return the customer
	 */
	public Customer getCustomer() {
		return customer;
	}
	/**
	 * @param customer the customer to set
	 */
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	/**
	 * @return the admin
	 */
	public Admin getAdmin() {
		return admin;
	}
	/**
	 * @param admin the admin to set
	 */
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public String save(){
		System.out.println("dealingAction.save()方法被执行");
		if(customer.getCustomerId().equals("")){
			customer.setCustomerId("000000");
		}
		dealing.setCustomer(customer);
		dealing.setAdmin(admin);
		dealing.setGood(good);
		dealing.setDealingtime(new Date());
        dealingService.save(dealing);
		return "success";
	}
	public String findAll(){
		List<Dealing> list = dealingService.findAll();	 
//		List<Good> goodList = goodService.findAll();
		request.put("list",list); 
//		request.put("goodList",goodList); 
		return "findAll";
	}
	
 
	 
	

}
