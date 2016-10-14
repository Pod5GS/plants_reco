package com.plants_reco.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.plants_reco.service.IUploadService;
import com.plants_reco.util.DivPlants;

public class UploadAction {
	String result;
	List<DivPlants> plants;
	File file;
	String fileFileName;
	private IUploadService uploadService;
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	
	public IUploadService getUploadService() {
		return uploadService;
	}

	public void setUploadService(IUploadService uploadService) {
		this.uploadService = uploadService;
	}
	
	public List<DivPlants> getPlants() {
		return plants;
	}

	public void setPlants(List<DivPlants> plants) {
		this.plants = plants;
	}

	public String upload() {
		String path = "uploadfiles/" + fileFileName;
		String directory = ServletActionContext.getServletContext().getRealPath("/");
		if(directory.charAt(directory.length() - 1) != '/'){
			directory += "/";
			directory.replace("\\", "/");
		}
		String absolutepath = directory + path;
		plants = uploadService.upload_reco(absolutepath, file);
		return "success";
	}
	
}
