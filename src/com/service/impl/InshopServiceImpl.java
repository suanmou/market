package com.service.impl;

import java.math.BigDecimal;
import java.util.List;

import com.dao.GoodDao;
import com.dao.InshopDao;
import com.entity.Good;
import com.entity.Goodtype;
import com.entity.Inshop;
import com.service.InshopService;

public class InshopServiceImpl implements InshopService{
	private InshopService inshopService;
	private InshopDao inshopDao;
	private GoodDao goodDao;
	/**
	 * @return the inshopService
	 */
	public InshopService getInshopService() {
		return inshopService;
	}

	/**
	 * @param inshopService the inshopService to set
	 */
	public void setInshopService(InshopService inshopService) {
		this.inshopService = inshopService;
	}

	/**
	 * @return the inshopDao
	 */
	public InshopDao getInshopDao() {
		return inshopDao;
	}

	/**
	 * @param inshopDao the inshopDao to set
	 */
	public void setInshopDao(InshopDao inshopDao) {
		this.inshopDao = inshopDao;
	}

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

	@Override
	public boolean update(Inshop inshop) {
		// TODO Auto-generated method stub
		inshopDao.update(inshop);
		return true;
	}

	@Override
	public boolean delete(Inshop inshop) {
		// TODO Auto-generated method stub
		inshopDao.delete(inshop);
		return true;
	}

	@Override
	public boolean save(Inshop inshop) {
		// TODO Auto-generated method stub
		goodDao.findByGoodId(inshop.getGoodId());
		Good g = goodDao.findByGoodId(inshop.getGoodId());
		if(g==null){
			return false;
		}
		else{
			inshopDao.save(inshop);
			int num1= g.getNum();
			int num2 = inshop.getNum();
			int num=num1+num2;
			BigDecimal originPrice1 =g.getOriginPrice();
			BigDecimal originPrice2 =inshop.getPrice();
			BigDecimal amount = originPrice1.multiply(new BigDecimal(num1)).add(originPrice2.multiply(new BigDecimal(num2)));
//			保留两位小数
			BigDecimal originPrice =  amount.divide(new BigDecimal(num),2, BigDecimal.ROUND_HALF_EVEN);
			g.setNum(num);
			g.setOriginPrice(originPrice);
			goodDao.update(g);
			return true;
		}
		
	}

	@Override
	public Inshop findByInshopId(int Id) {
		// TODO Auto-generated method stub
		Inshop inshop = inshopDao.findByInshopId(Id);
		if(inshop==null){
			return null;
		}
		return inshop;
		 
	}

	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Inshop> findAll() {
		// TODO Auto-generated method stub
		return inshopDao.findAll();
	}

	@Override
	public boolean delete(int inshopId) {
		// TODO Auto-generated method stub
		inshopDao.delete(this.findByInshopId(inshopId));
		return true;
	}

	@Override
	public BigDecimal findByLastPrice(String goodId) {
		// TODO Auto-generated method stub
		return inshopDao.findByLastPrice(goodId);
	}

}
