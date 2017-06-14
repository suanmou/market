package com.service.impl;

import java.util.List;

import com.dao.GoodDao;
import com.entity.Good;
import com.service.GoodService;

public class GoodServiceImpl implements GoodService {

	public GoodDao goodDao;
	public GoodService goodService;
	/**
	 * @return the goodDao
	 */
	public GoodDao getGoodDao() {
		return goodDao;
	}

	/**
	 * @param goodDao the goodDao to set
	 */
	public void setGoodDao(GoodDao goodDao) {
		this.goodDao = goodDao;
	}

	/**
	 * @return the goodService
	 */
	public GoodService getGoodService() {
		return goodService;
	}

	/**
	 * @param goodService the goodService to set
	 */
	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	@Override
	public boolean update(Good good) {
		// TODO Auto-generated method stub
		return goodDao.update(good);
	}

	@Override
	public boolean delete(Good good) {
		// TODO Auto-generated method stub
		return goodDao.delete(good);
	}

	@Override
	public boolean save(Good good) {
		// TODO Auto-generated method stub
		return goodDao.save(good);
	}

 

	@Override
	public Good findByGoodId(String goodId) {
		// TODO Auto-generated method stub
		return goodDao.findByGoodId(goodId);
	}

	@Override
	public boolean delete(String goodId) {
		// TODO Auto-generated method stub
		goodDao.delete(this.findByGoodId(goodId));
		return true;
	}

	@Override
	public List<Good> findAll() {
		// TODO Auto-generated method stub
		return goodDao.findAll();
	}

}
