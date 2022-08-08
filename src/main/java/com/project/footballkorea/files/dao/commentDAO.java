package com.project.footballkorea.files.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface commentDAO {

	public int commentUpDAO(
			@Param("postId") int postId
			, @Param("userName") String userName
			, @Param("comment") String comment
			, @Param("iconPath") String iconPath
			);
}
