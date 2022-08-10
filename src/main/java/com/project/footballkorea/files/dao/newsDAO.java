package com.project.footballkorea.files.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.project.footballkorea.files.model.News;

@Repository
public interface newsDAO {
	

	public List<News> newsInfoDAO();
	
	public News newsIdDetailDAO(int id);
}
