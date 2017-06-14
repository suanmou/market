package com.service.impl;

import java.util.List;

import com.dao.GoodDao;
import com.dao.GoodtypeDao;
import com.entity.Goodtype;
import com.service.GoodtypeService;

public class GoodtypeServiceImpl implements GoodtypeService{
	private GoodtypeDao goodtypeDao;
	private GoodtypeService goodtypeService;
	private GoodDao goodDao;
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
	 * @return the goodtypeDao
	 */
	public GoodtypeDao getGoodtypeDao() {
		return goodtypeDao;
	}

	/**
	 * @param goodtypeDao the goodtypeDao to set
	 */
	public void setGoodtypeDao(GoodtypeDao goodtypeDao) {
		this.goodtypeDao = goodtypeDao;
	}

	/**
	 * @return the goodtypeService
	 */
	public GoodtypeService getGoodtypeService() {
		return goodtypeService;
	}

	/**
	 * @param goodtypeService the goodtypeService to set
	 */
	public void setGoodtypeService(GoodtypeService goodtypeService) {
		this.goodtypeService = goodtypeService;
	}

	@Override
	public boolean save(Goodtype goodtype) {
		// TODO Auto-generated method stub
		goodtypeDao.save(goodtype);
		System.out.println("GoodtypeServiceImpl.save()方法被执行");
		return true;
	}

	@Override
	public boolean delete(Goodtype goodtype) {
		// TODO Auto-generated method stub
		return goodtypeDao.delete(goodtype);
	}

	@Override
	public boolean update(Goodtype goodtype) {
		// TODO Auto-generated method stub
		return goodtypeDao.update(goodtype);
	}

	@Override
	public List<Goodtype> findAll() {
		// TODO Auto-generated method stub
		return goodtypeDao.findAll();
	}
	@Override
	public Goodtype findByGoodtypeId(String goodtypeId) {
		// TODO Auto-generated method stub
		Goodtype goodtype = goodtypeDao.findByGoodtypeId(goodtypeId);
		if(goodtype==null){
			return null;
		}
		return goodtype;
	}

	@Override
	public boolean delete(String goodtypeId) {
		// TODO Auto-generated method stub
		if(goodDao.findByGoodtypeId(goodtypeId)){
			return false;
		};
		return goodtypeDao.delete(goodtypeId);
	}

}
