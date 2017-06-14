package com.service.impl;

import java.util.List;


import com.dao.SupplierDao;
import com.entity.Supplier;
import com.service.SupplierService;

public class SupplierServiceImpl implements SupplierService{
	private SupplierDao supplierDao;
	private SupplierService supplierService;
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

	/**
	 * @return the supplierService
	 */
	public SupplierService getSupplierService() {
		return supplierService;
	}

	/**
	 * @param supplierService the supplierService to set
	 */
	public void setSupplierService(SupplierService supplierService) {
		this.supplierService = supplierService;
	}

	@Override
	public boolean update(Supplier supplier) {
		// TODO Auto-generated method stub
		return supplierDao.update(supplier);
	}

	@Override
	public boolean delete(Supplier supplier) {
		// TODO Auto-generated method stub
		return supplierDao.delete(supplier);
	}

	@Override
	public boolean save(Supplier supplier) {
		// TODO Auto-generated method stub
		supplierDao.save(supplier);
		return true;
	}

	@Override
	public Supplier findBySupplierId(String supplierId) {
		// TODO Auto-generated method stub
		return supplierDao.findBySupplierId(supplierId);
	}

	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Supplier> findAll() {
		// TODO Auto-generated method stub
		return supplierDao.findAll();
	}

	@Override
	public boolean delete(String supplierId) {
		// TODO Auto-generated method stub
		return supplierDao.delete(supplierId);
	}
	
}
