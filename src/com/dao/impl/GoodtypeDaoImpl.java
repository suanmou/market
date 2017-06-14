package com.dao.impl;


import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.GoodtypeDao;
import com.entity.Good;
import com.entity.Goodtype;

public class GoodtypeDaoImpl extends HibernateDaoSupport implements GoodtypeDao {

	@Override
	public boolean update(Goodtype goodtype) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(goodtype);
		return true;
	}

	@Override
	public boolean delete(Goodtype goodtype) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(goodtype);
		return true;
	}

	@Override
	public boolean save(Goodtype goodtype) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(goodtype);
		System.out.println("GoodtypeDao.save()被执行");
		return true;
	}

	public Goodtype findByGoodtypeId(String goodtypeId) {
		// TODO Auto-generated method stub
		try {
			Goodtype goodtype = this.getHibernateTemplate().get(Goodtype.class, goodtypeId);
			return goodtype;
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
	public List<Goodtype> findAll() {
		// TODO Auto-generated method stub
		String hql = "from Goodtype";
		List<Goodtype> list = (List<Goodtype>)this.getHibernateTemplate().find(hql);  
		System.out.println("GoodtypeDao.findAll()方法执行");
		if(list.size()>0){
			System.out.println(list); 
			return list;
		}
		else{
			return null;
		}
	 
	}

	@Override
	public boolean delete(String goodtypeId) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(this.findByGoodtypeId(goodtypeId)); ;
		return true;
	}
 

}
