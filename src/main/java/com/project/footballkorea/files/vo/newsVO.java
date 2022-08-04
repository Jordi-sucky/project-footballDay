package com.project.footballkorea.files.vo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.footballkorea.common.FileManagerService;
import com.project.footballkorea.files.dao.newsDAO;
import com.project.footballkorea.files.model.News;

@Service
public class newsVO {
	
	@Autowired
	private newsDAO newsdao;
	
	public int testVO(String title, String content, MultipartFile file, String league, String company, String reporter ) {
		
		String imagePath = FileManagerService.saveFile(file);
		return newsdao.testDAO(title, content, imagePath, league, company, reporter);
	}
	
	public List<News> newsInfoVO(){
		
		return newsdao.newsInfoDAO();
	}
}
