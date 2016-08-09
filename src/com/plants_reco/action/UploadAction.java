package com.plants_reco.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;


public class UploadAction {
	String result;
	File file;
	String fileFileName;
	
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
	
	public String upload() {
		if(file == null){
			System.out.println("file is null!!");
		}else{
			System.out.println(file.toString());
		}
		String path = "uploadfiles/" + fileFileName;
		String directory = ServletActionContext.getServletContext().getRealPath("/");
		if(directory.charAt(directory.length() - 1) != '/'){
			directory += "/";
			directory.replace("\\", "/");
		}
		String absolutepath = directory + path;
		System.out.println(absolutepath);
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
			result = "success";
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			result = "fail";
			return result;
		}
	}
	
}
