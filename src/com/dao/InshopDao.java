package com.dao;

import java.math.BigDecimal;
import java.util.List;

import com.entity.Inshop;

 

public interface InshopDao {
	public boolean update(Inshop inshop);
	public boolean delete(Inshop inshop);
	public boolean delete(int inshopId);
	public boolean save(Inshop inshop);
	public Inshop findByInshopId(int id);
	public BigDecimal findByLastPrice(String goodId);
	public int findCount();
	public List<Inshop> findAll();
}
