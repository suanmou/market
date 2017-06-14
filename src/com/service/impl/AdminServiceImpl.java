package com.service.impl;

import java.util.List;
import java.util.Map;

import com.dao.AdminDao;
import com.entity.Admin;
import com.entity.Customer;
import com.opensymphony.xwork2.ActionContext;
import com.service.AdminService;
public class AdminServiceImpl implements AdminService {
	private AdminDao adminDao;
	private AdminService adminService;
	/**
	 * @return the adminDao
	 */
	public AdminDao getAdminDao() {
		return adminDao;
	}

	/**
	 * @param adminDao the adminDao to set
	 */
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
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

	@Override
	public boolean update(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.update(admin);
	}

	@Override
	public boolean delete(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.delete(admin);
	}

	@Override
	public boolean save(Admin admin) {
		// TODO Auto-generated method stub
		adminDao.save(admin);
		System.out.println("AdminServiceImpl.save()方法被执行");
		return true;
//		return adminDao.save(admin);
	}

	@Override
	public boolean findAll() {
		// TODO Auto-generated method stub
		List<Admin> list =adminDao.findAll();
		 // 将pageBean存入到值栈中
		System.out.println(list.get(0)+"AdminServiceImpl");
//      ActionContext.getContext().getValueStack().push(list);
		Map request = (Map) ActionContext.getContext().get("request");     
		request.put("list",list); 
		System.out.println("AdminServiceImpl.findAll()方法被执行");
		return true;
	}

	 

	@Override
	public Admin findByAdminId(String adminId) {
		// TODO Auto-generated method stub
		return adminDao.findByAdminId(adminId);
	}

	@Override
	public Admin findByAdminIdAndPassword(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.findByAdminIdAndPassword(admin);
	}

	@Override
	public boolean delete(String adminId) {
		// TODO Auto-generated method stub
		return adminDao.delete(adminId);
	}
 
}
