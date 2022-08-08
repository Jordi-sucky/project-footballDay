package com.project.footballkorea.files.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface postDAO {
	
	public int postUpDAO(
			@Param("userId") int userId
			, @Param("userName") String userName
			, @Param("title") String title
			, @Param("content") String content
			); 
}