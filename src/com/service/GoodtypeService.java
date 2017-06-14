package com.service;

 
import java.util.List;

import com.entity.Goodtype;

public interface GoodtypeService {

	public boolean save(Goodtype goodtype);
	public boolean delete(Goodtype goodtype);
	public boolean update(Goodtype goodtype);
	public boolean delete(String goodtypeId);
	public Goodtype findByGoodtypeId(String goodtypeId);
	public List<Goodtype> findAll();
	 

}
