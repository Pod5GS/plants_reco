package com.plants_reco.dao;

import com.plants_reco.domain.Plants;

public interface IPlantsDao {
	Plants findByID(Integer id);
}
