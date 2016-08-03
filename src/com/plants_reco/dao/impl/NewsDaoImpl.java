package com.plants_reco.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.plants_reco.dao.INewsDao;
import com.plants_reco.domain.News;

public class NewsDaoImpl extends HibernateDaoSupport implements INewsDao {
	public Integer save(News news){
		return (Integer)getHibernateTemplate().save(news);
	}
}
