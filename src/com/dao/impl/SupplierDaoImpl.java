package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.SupplierDao;
import com.entity.Good;
import com.entity.Supplier;

public class SupplierDaoImpl extends HibernateDaoSupport implements SupplierDao{
	private SupplierDao supplierDao;
	/**
	 * @return the supplierDao
	 */
	public SupplierDao getSupplierDao() {
		return supplierDao;
	}

	/**
	 * @param supplierDao the supplierDao to set
	 */
	public void setSupplierDao(SupplierDao supplierDao) {
		this.supplierDao = supplierDao;
	}

	@Override
	public boolean update(Supplier supplier) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(supplier);
		return true;
	}

	@Override
	public boolean delete(Supplier supplier) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(supplier);
		return true;
	}

	@Override
	public boolean save(Supplier supplier) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(supplier);
		return true;
	}

	@Override
	public Supplier findBySupplierId(String supplierId) {
		// TODO Auto-generated method stub
		Supplier supplier  = this.getHibernateTemplate().get(Supplier.class, supplierId);
		return supplier;
	}

	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Supplier> findAll() {
		// TODO Auto-generated method stub
		String hql = "from Supplier";
		List<Supplier> list = (List<Supplier>)this.getHibernateTemplate().find(hql);  
		System.out.println("SupplierDao.findAll()·½·¨Ö´ÐÐ");
		if(list.size()>0){
			System.out.println(list); 
			return list;
		}
		else{
			return null;
		}
	}

	@Override
	public boolean delete(String supplierId) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(this.findBySupplierId(supplierId));
		return true;
	}

}
