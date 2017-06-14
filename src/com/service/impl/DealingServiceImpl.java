package com.service.impl;

import java.util.List;

import com.dao.AdminDao;
import com.dao.CustomerDao;
import com.dao.DealingDao;
import com.dao.GoodDao;
import com.entity.Customer;
import com.entity.Dealing;
import com.entity.Good;
import com.service.DealingService;

public class DealingServiceImpl implements DealingService{

	private DealingService dealingService;
	private DealingDao dealingDao;
	private GoodDao goodDao;
	private CustomerDao customerDao;
	private AdminDao adminDao;
	/**
	 * @return the dealingService
	 */
	public DealingService getDealingService() {
		return dealingService;
	}

	/**
	 * @param dealingService the dealingService to set
	 */
	public void setDealingService(DealingService dealingService) {
		this.dealingService = dealingService;
	}

	/**
	 * @return the dealingDao
	 */
	public DealingDao getDealingDao() {
		return dealingDao;
	}

	/**
	 * @param dealingDao the dealingDao to set
	 */
	public void setDealingDao(DealingDao dealingDao) {
		this.dealingDao = dealingDao;
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

	/**
	 * @return the customerDao
	 */
	public CustomerDao getCustomerDao() {
		return customerDao;
	}

	/**
	 * @param customerDao the customerDao to set
	 */
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	/**
	 * @return the adminDao
	 */
	public AdminDao getAdminDao() {
		return adminDao;
	}

	/**
	 * @param adminDao the adminDao to set
	 */
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public boolean update(Dealing dealing) {
		// TODO Auto-generated method stub
		return dealingDao.update(dealing);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return dealingDao.delete(id);
	}

	@Override
	public boolean save(Dealing dealing) {
		// TODO Auto-generated method stub
//		Customer c = customerDao.findByCustomerId(dealing.getCustomer().getCustomerId());
		Good g = goodDao.findByGoodId(dealing.getGood().getGoodId());
		int num = g.getNum()-dealing.getNum();
		g.setNum(num);
		goodDao.update(g);
		dealingDao.save(dealing);
		return true;
	}

	@Override
	public Dealing findByDealingId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Dealing> findAll() {
		// TODO Auto-generated method stub
		return dealingDao.findAll();
	}
	
}
