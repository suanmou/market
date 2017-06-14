package com.dao.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.InshopDao;
import com.entity.Admin;
import com.entity.Good;
import com.entity.Inshop;

public class InshopDaoImpl extends HibernateDaoSupport implements InshopDao {
	private InshopDao inshopDao;
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

	@Override
	public boolean update(Inshop inshop) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(inshop);
		return true;
	}

	@Override
	public boolean delete(Inshop inshop) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(inshop);
		return true;
	}

	@Override
	public boolean save(Inshop inshop) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(inshop);
		return true;
	}

	@Override
	public Inshop findByInshopId(int id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Inshop.class, id);
	}

	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Inshop> findAll() {
		// TODO Auto-generated method stub
		String hql = "from Inshop";
		List<Inshop> list = (List<Inshop>)this.getHibernateTemplate().find(hql);  
		System.out.println("InshopDao.findAll()·½·¨Ö´ÐÐ");
		if(list.size()>0){
			System.out.println(list); 
			return list;
		}
		else{
			return null;
		}
	}

	@Override
	public boolean delete(int inshopId) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(this.findByInshopId(inshopId));
		return true;
	}

	@Override
	public BigDecimal findByLastPrice(String goodId) {
		// TODO Auto-generated method stub
		String hql = "from Inshop where goodId = ? order by inTime desc limit 0,1";
		List<Inshop> list= (List<Inshop>) this.getHibernateTemplate().find(hql, goodId);
		BigDecimal lastPrice;
		if(list.size()>0){
			Inshop inshop = list.get(0);
			 lastPrice = inshop.getPrice();
		}else{
			 lastPrice = new BigDecimal(0);
		}
			 
		return lastPrice;
		
	}

}
