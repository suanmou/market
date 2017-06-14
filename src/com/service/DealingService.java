package com.service;

import java.util.List;

import com.entity.Dealing;
 

public interface DealingService {
	public boolean update(Dealing dealing);
	public boolean delete(int id);
	public boolean save(Dealing dealing);
	public Dealing findByDealingId(int id);
	public int findCount();
	public List<Dealing> findAll();
}
