package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.AdminDao;
import com.entity.Admin;
import com.entity.Customer;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao{

	private AdminDao adminDao; 
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

	@Override
	public boolean update(Admin admin) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(admin);
		return true;
	}

	@Override
	public boolean delete(Admin admin) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(admin);
		return true;
	}

	@Override
	public boolean save(Admin admin) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(admin);
		System.out.println("AdminDao.save()被执行");
	    return true;
	}
	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Admin> findAll() {
		// TODO Auto-generated method stub
		String hql = "from Admin";
		List<Admin> list = (List<Admin>)this.getHibernateTemplate().find(hql);  
		System.out.println("AdminDao.findAll()方法执行");
		if(list.size()>0){
			System.out.println(list); 
			return list;
		}
		else{
			return null;
		}
		 
	}

	@Override
	public Admin findByAdminIdAndPassword(Admin admin) {
		// TODO Auto-generated method stub
		String hql = "from Admin where adminId = ? and password = ?";
		List<Admin> list = (List<Admin>) this.getHibernateTemplate().find(hql,admin.getAdminId(),admin.getPassword());
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public Admin findByAdminId(String adminId) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Admin.class, adminId);
	}

	@Override
	public boolean delete(String adminId) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(this.findByAdminId(adminId));
		return true;
	}

	 

}
