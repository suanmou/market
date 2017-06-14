package com.dao;

import java.util.List;

import com.entity.Supplier;

 

public interface SupplierDao {
	 
	public boolean update(Supplier supplier);
	public boolean delete(Supplier supplier);
	public boolean delete(String supplierId);
	public boolean save(Supplier supplier);
	public Supplier findBySupplierId(String supplierId);
	public int findCount();
	public List<Supplier> findAll();
}
