package com.dao;

import java.util.List;

import com.entity.Goodtype;
 

public interface GoodtypeDao {
	public boolean update(Goodtype goodtype);
	public boolean delete(Goodtype goodtype);
	public boolean delete(String goodtypeId);
	public boolean save(Goodtype goodtype);
	public Goodtype findByGoodtypeId(String goodtypeId);
	public int findCount();
	public List<Goodtype> findAll();
 
}
