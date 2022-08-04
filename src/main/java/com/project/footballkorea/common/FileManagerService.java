package com.project.footballkorea.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class FileManagerService {

	public final static String FILE_UPLOAD_PATH = "C:\\Users\\whtjr\\OneDrive\\���� ȭ��\\Spring tool4\\upload\\image/";
	
	
	private static Logger logger = LoggerFactory.getLogger(FileManagerService.class);
	// ���� ���� 
	public static String saveFile(MultipartFile file) {
		
		
		if(file == null) {
			logger.error("FileManagerService:::saveFile - ���ε� ���� ����");
			return null;
		}
		// ���� ���
		// ����� ���� ������ �� �ֵ���
		// ����ڰ� ������ �ø� �ð� ���� ����
		// /12_33923959/test.png
		// 1970 �� 1�� 1�� �������� ���� �и� ������ ��� �Ǿ����� ��Ÿ���� ��
		String directoryName = "_" + System.currentTimeMillis() + "/";
		
		String filePath = FILE_UPLOAD_PATH + directoryName;
		
		// ���丮 ����
		File directory = new File(filePath);
		if(directory.mkdir() == false) {
			// ���丮 ���� ����
			logger.error("FileManagerService:::saveFile - ���丮 ���� ����");
			return null;
		}
		
		try {
			byte[] bytes = file.getBytes();
			// ���� ���� ��� + ���� �̸� ��� ��ü
			Path path = Paths.get(filePath + file.getOriginalFilename());
			// ���� ����
			Files.write(path, bytes);
		} catch (IOException e) {
			// ���� ���� ����
			logger.error("FileManagerService:::saveFile - ���� ���� ��");
			e.printStackTrace();
			return null;
		}
		
		// ���� ���� ������ �ּ� ����
		// <img src="/images/12_124909218/test.png">
		
		return "/images/" + directoryName + file.getOriginalFilename();
		
	}
	
	//���� ����
	public static void removeFile(String filePath) {
		
		//���ϰ�ΰ� �������
		if(filePath == null) {
			logger.error("FileManagerService::removeFile - ���� ���� ����(��� ����)");
			return ;
			// �������� ����
		}
		
		//������ ���� ���
		//filePath : /images/2_123456789/test.png
		//���� ���� ��� : D:\������\spring\springProject
		
		
		String realFilePath = FILE_UPLOAD_PATH + filePath.replace("/images/","");
		
		//���� �����
		Path path = Paths.get(realFilePath);
		//������ �ִ��� Ȯ��
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (Exception e) {
				// TODO: handle exception
				logger.error("FileManagerService::removeFile - ���� ���� ����");
				e.printStackTrace();
			}
		}
		
		//���丮 ���� (����)
		//���� ���丮 ��� : D:\������\spring\springProject\\upload\image
		path = path.getParent();
		
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (Exception e) {
				// TODO: handle exception
				logger.error("FileManagerService::removeFile - ���丮 ���� ����");
				e.printStackTrace();
			}
		}
	}
}
