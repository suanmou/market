package com.dao.impl;


import java.util.List;

import java.util.Map;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.CustomerDao;
import com.entity.Customer;
import com.opensymphony.xwork2.ActionContext;

@SuppressWarnings("deprecation")
public class CustomerDaoImpl extends HibernateDaoSupport implements CustomerDao {

	private CustomerDao customerDao;
	/**
	 * @param customerDao the customerDao to set
	 */
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}
	
	
	public boolean save(Customer customer) {
		// TODO Auto-generated method stub
	      // 获取配置文件，configuration,sessionFactory,session,简化了操作
	     this.getHibernateTemplate().save(customer);
		 System.out.println("CustomerDao.save()被执行");
	     return true;
	}

	public boolean delete(Customer customer) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(customer);
		System.out.println("CustomerDao.delete()被执行");
		return true;
	}

	public Customer findByCustomerId(String customerId) {
		// TODO Auto-generated method stub
		System.out.println("CustomerDao.findByCustomerId()被执行");
		return this.getHibernateTemplate().get(Customer.class, customerId);
	}
//查询会员总数目
	public int findCount() {
		// TODO Auto-generated method stub
		String hql = "select count(*) from Customer";
		List<?> list = this.getHibernateTemplate().find(hql);
		System.out.println("CustomerDao.findCount()被执行");
  		if(list.size()>0){
  			System.out.println("查询总数目为:"+list.size());
  			return Integer.parseInt(list.get(0).toString());
  			
  		}else{
  			return 0;
  		}
	
	}
// 查看所有会员信息
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		String hql = "from Customer";
		List<Customer> list = (List<Customer>)this.getHibernateTemplate().find(hql);  
		System.out.println("CustomerDao.findAll()方法执行");
		if(list.size()>0){
			System.out.println(list); 
			return list;
		}
		else{
			return null;
		}
	}
//	修改更新信息
	public boolean update(Customer customer) {		 
			this.getHibernateTemplate().update(customer);
			System.out.println("CustomerDao.update()被执行");
			return true;
	}


	@Override
	public Customer findByUsernameAndPassword(Customer customer) {
		// TODO Auto-generated method stub
//		根据用户名和密码查询用户的方法
		String hql = "from Customer where customerId = ? and name = ?";
		List<Customer> list = (List<Customer>) this.getHibernateTemplate().find(hql,customer.getCustomerId(),customer.getName());
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}


	@Override
	public boolean delete(String customerId) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(this.findByCustomerId(customerId));
		return true;
	}

}
