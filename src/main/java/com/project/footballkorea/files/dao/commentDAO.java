package com.project.footballkorea.files.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.project.footballkorea.files.model.Comment;

@Repository
public interface commentDAO {


	
	public int commentUpDAO(
			@Param("postId") int postId
			, @Param("userNickname") String userNickname
			, @Param("comment") String comment
			, @Param("iconPath") String iconPath
			);
	
	public List<Comment> commentViewDAO(@Param("postId") int postId);
}
