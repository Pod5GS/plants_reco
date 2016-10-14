package com.plants_reco.service;

import java.io.File;
import java.util.List;

import com.plants_reco.util.DivPlants;

public interface IUploadService {
	public List<DivPlants> upload_reco(String absolutepath, File file);
}
