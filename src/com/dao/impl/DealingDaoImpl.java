package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.DealingDao;
import com.entity.Customer;
import com.entity.Dealing;

public class DealingDaoImpl extends HibernateDaoSupport implements DealingDao {

	private DealingDao dealingDao;
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

	@Override
	public boolean update(Dealing dealing) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(dealing);
		return true;
	}

	@Override
	public boolean delete(Dealing dealing) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(dealing);
		return true;
	}

	@Override
	public boolean save(Dealing dealing) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(dealing);
		return true;
	}

	@Override
	public Dealing findByDealingId(int id) {
		// TODO Auto-generated method stub
		Dealing dealing = this.getHibernateTemplate().get(Dealing.class, id);
		return  dealing;
	}

	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Dealing> findAll() {
		// TODO Auto-generated method stub
		String hql = "from Dealing";
		List<Dealing> list = (List<Dealing>)this.getHibernateTemplate().find(hql);  
		System.out.println("DealingDao.findAll()·½·¨Ö´ÐÐ");
		if(list.size()>0){
			System.out.println(list); 
			return list;
		}
		else{
			return null;
		}
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(this.findByDealingId(id));
		return true;
	}
}
