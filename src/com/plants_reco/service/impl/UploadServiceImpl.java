package com.plants_reco.service.impl;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import com.plants_reco.dao.IPlantsDao;
import com.plants_reco.domain.Plants;
import com.plants_reco.service.IUploadService;
import com.plants_reco.util.DivPlants;
public class UploadServiceImpl implements IUploadService{
	IPlantsDao plantsDao;
	
	public IPlantsDao getPlantsDao() {
		return plantsDao;
	}

	public void setPlantsDao(IPlantsDao plantsDao) {
		this.plantsDao = plantsDao;
	}

	public List<DivPlants> upload_reco(String absolutepath, File file) {
		String result = "";
		List<DivPlants> divplants = new ArrayList<DivPlants>();
		try {
			File newfile = new File(absolutepath);
			if (!newfile.getParentFile().exists())
				newfile.getParentFile().mkdirs();
			if (!newfile.exists())
				newfile.createNewFile();
			FileOutputStream fos = new FileOutputStream(newfile);
			FileInputStream fis = new FileInputStream(file);
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
			}
			fos.close();
			fis.close();
			String[] cmds = new String[]{
					"/bin/sh", 
					"-c", 
					"source ~/TENSORFLOW/bin/activate && python /Users/Crenshaw/Documents/iVip_2016/Tensorflow-Examples-master/retrain.py " + absolutepath,
			};
			Runtime runtime = Runtime.getRuntime();
			Process process = runtime.exec(cmds);
			process.waitFor();
			BufferedReader br = null;
			br = new BufferedReader(new InputStreamReader(process.getInputStream(), "UTF-8"));
			String tmp;
			while ((tmp = br.readLine()) != null) {
				result += (tmp + "@");
			}
			String[] plants = result.split("@");
			for(String plant : plants){
				DivPlants tmpdivplants = new DivPlants();
				Plants tmpplants = plantsDao.findByID(Integer.parseInt(plant.split(",")[0]));
				tmpdivplants.setId(tmpplants.getId());
				tmpdivplants.setScore(plant.split(",")[1]);
				tmpdivplants.setPlant_image(tmpplants.getPlant_image());
				tmpdivplants.setPlant_name(tmpplants.getPlant_name());
				tmpdivplants.setFormal_name(tmpplants.getFormal_name());
				tmpdivplants.setOther_name(tmpplants.getOther_name());
				tmpdivplants.setPlant_class(tmpplants.getPlant_class());
				tmpdivplants.setPlant_address(tmpplants.getPlant_address());
				divplants.add(tmpdivplants);
			}
			return divplants;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
