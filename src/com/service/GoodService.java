package com.service;

import java.util.List;

import com.entity.Good;

public interface GoodService {
	public boolean update(Good good);
	public boolean delete(Good good);
	public boolean delete(String goodId);
	public boolean save(Good good); 
	public Good findByGoodId(String goodId);
	public List<Good> findAll();
	 
}
