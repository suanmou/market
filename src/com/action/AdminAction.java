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
	    	admin.setSex("Ů");
	    }else if(admin.getSex().equals("1")){
	    	admin.setSex("��");
	    }else{
	    	admin.setSex("δ��д");
	    }
		System.out.println("AdminAction.save()������ִ��");
		adminService.save(admin);
		return "success";
	}

	public String update() {
		System.out.println("AdminAction.update()������ִ��");
		if(admin.getSex().equals("0")){
	    	admin.setSex("Ů");
	    }else if(admin.getSex().equals("1")){
	    	admin.setSex("��");
	    }else{
	    	admin.setSex("δ��д");
	    }
		admin.setRankId(0);
		System.out.println(admin.getAdminId());
		System.out.println(admin.getAdminName());
		adminService.update(admin);
		return "success";
	}

	public String delete() {
		System.out.println("AdminAction.delete()������ִ��");
		System.out.println(adminId);
//		adminService.delete(admin);
		adminService.delete(admin.getAdminId());
		System.out.println("AdminAction.delete()�������");
		return "success";
	}
	public String findByAdminId(){
		System.out.println("AdminAction.findByAdminId()��ִ��");
		Admin a = adminService.findByAdminId(admin.getAdminId());     
		request.put("admin",a); 
		return "edit";
	} 

	public String findAll() {
		System.out.println("AdminAction.findAll()������ִ��");
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
