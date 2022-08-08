package com.project.footballkorea.files.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.project.footballkorea.files.model.Freeboard;

@Repository
public interface postDAO {
	
	public int postUpDAO(
			@Param("userId") int userId
			, @Param("userNickname") String userNickname
			, @Param("iconPath") String userIconPath
			, @Param("title") String title
			, @Param("content") String content
			); 
	
	public List<Freeboard> selectPostListDAO();
	
	public Freeboard selectPostDetailDAO(@Param("id") int id);
}