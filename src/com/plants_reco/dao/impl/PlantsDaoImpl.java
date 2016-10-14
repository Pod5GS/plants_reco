package com.plants_reco.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.plants_reco.dao.IPlantsDao;
import com.plants_reco.domain.Plants;

public class PlantsDaoImpl extends HibernateDaoSupport implements IPlantsDao{

	@Override
	public Plants findByID(Integer id) {
		// TODO Auto-generated method stub
		return (Plants)getHibernateTemplate().get(Plants.class, id);
	}

}
