package com.project.footballkorea.files.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.project.footballkorea.files.model.News;

@Repository
public interface newsDAO {
	
	public int testDAO(
			@Param("title") String title,
			@Param("content") String content,
			@Param("imagePath") String imagePath,
			@Param("league") String league,
			@Param("company") String company,
			@Param("reporter") String reporter
			);
	
	public List<News> newsInfoDAO();
}
