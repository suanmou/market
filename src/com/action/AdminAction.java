package com.action;

import java.util.Map;

import com.entity.Admin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.AdminService;

public class AdminAction extends ActionSupport implements ModelDriven<Admin> {
	private Admin admin = new Admin();
	private String adminId;
	Map session = (Map) ActionContext.getContext().get("session"); 
	Map request = (Map) ActionContext.getContext().get("request");
	/**
	 * @return the adminId
	 */
	public String getAdminId() {
		return adminId;
	}

	/**
	 * @param adminId the adminId to set
	 */
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return admin;
	}

	private AdminService adminService;

	/**
	 * @return the adminService
	 */
	public AdminService getAdminService() {
		return adminService;
	}

	/**
	 * @param adminService
	 *            the adminService to set
	 */
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public String save() {
		if(admin.getSex().equals("0")){
	    	admin.setSex("女");
	    }else if(admin.getSex().equals("1")){
	    	admin.setSex("男");
	    }else{
	    	admin.setSex("未填写");
	    }
		System.out.println("AdminAction.save()方法被执行");
		adminService.save(admin);
		return "success";
	}

	public String update() {
		System.out.println("AdminAction.update()方法被执行");
		if(admin.getSex().equals("0")){
	    	admin.setSex("女");
	    }else if(admin.getSex().equals("1")){
	    	admin.setSex("男");
	    }else{
	    	admin.setSex("未填写");
	    }
		admin.setRankId(0);
		System.out.println(admin.getAdminId());
		System.out.println(admin.getAdminName());
		adminService.update(admin);
		return "success";
	}

	public String delete() {
		System.out.println("AdminAction.delete()方法被执行");
		System.out.println(adminId);
//		adminService.delete(admin);
		adminService.delete(admin.getAdminId());
		System.out.println("AdminAction.delete()方法完毕");
		return "success";
	}
	public String findByAdminId(){
		System.out.println("AdminAction.findByAdminId()被执行");
		Admin a = adminService.findByAdminId(admin.getAdminId());     
		request.put("admin",a); 
		return "edit";
	} 

	public String findAll() {
		System.out.println("AdminAction.findAll()方法被执行");
		adminService.findAll();
		return "findAll";
	}

	public String login() {
		if (adminService.findByAdminIdAndPassword(admin) == null) {
			return "error";
		}
		session.put("admin",admin); 
		return "index";
	}
	public String logout(){
		session.remove("admin");
		return "input";
	} 
}
