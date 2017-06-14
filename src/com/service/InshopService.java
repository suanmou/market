package com.service;

import java.math.BigDecimal;
import java.util.List;

import com.entity.Inshop;

public interface InshopService {
	public boolean update(Inshop inshop);
	public boolean delete(Inshop inshop);
	public boolean delete(int inshopId);
	public BigDecimal findByLastPrice(String goodId);
	public boolean save(Inshop inshop);
	public Inshop findByInshopId(int Id);
	public int findCount();
	public List<Inshop> findAll();
}
