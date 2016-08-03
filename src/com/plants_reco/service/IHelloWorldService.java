package com.plants_reco.service;

import com.plants_reco.dao.INewsDao;

public interface IHelloWorldService {
	
	public void addNew();

	public INewsDao getNewsDao() ;

	public void setNewsDao(INewsDao newsDao);
	
}
