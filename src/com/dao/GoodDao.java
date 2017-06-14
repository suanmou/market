package com.dao;

import java.util.List;

import com.entity.Good;

 

public interface GoodDao {
	public boolean update(Good good);
	public boolean delete(Good good);
	public boolean delete(String goodId);
	public boolean findByGoodtypeId(String goodtypeId);
	public boolean save(Good good);
	public Good findByGoodId(String goodId);
	public int findCount();
	public List<Good> findAll();
}
