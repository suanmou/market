package com.dao.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.GoodDao;
import com.entity.Admin;
import com.entity.Customer;
import com.entity.Good;
import com.entity.Goodtype;

public class GoodDaoImpl extends HibernateDaoSupport implements GoodDao {
	private GoodDao goodDao;
	 
	@Override
	public boolean update(Good good) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(good);
		return true;
	}

	@Override
	public boolean delete(Good good) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(good);
		return true;
	}

	@Override
	public boolean save(Good good) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(good);
		return true;
	}

	@Override
	public Good findByGoodId(String goodId) {
		// TODO Auto-generated method stub
		try {
			Good g = this.getHibernateTemplate().get(Good.class,goodId);
			if(g!=null){
				return g;
			}else{
				return null;
			}
		} catch (DataAccessException e) {
			throw new DaoException(e.getMessage(), e);
		}
		 
		 
		 
	}

	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Good> findAll() {
		// TODO Auto-generated method stub
		String hql = "from Good";
		List<Good> list = (List<Good>)this.getHibernateTemplate().find(hql);  
		System.out.println("GoodDao.findAll()·½·¨Ö´ÐÐ");
		if(list.size()>0){
			System.out.println(list); 
			return list;
		}
		else{
			return null;
		}
	}

	@Override
	public boolean delete(String goodId) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(this.findByGoodId(goodId));
		return true;
	}

	@Override
	public boolean findByGoodtypeId(String goodtypeId) {
		// TODO Auto-generated method stub
		String hql = "from Good where goodtypeId = ? ";
		List<Good> list = (List<Good>) this.getHibernateTemplate().find(hql,goodtypeId);
		if(list.size()>0){
			return true;
		}
		 
		return false;
	}

}
