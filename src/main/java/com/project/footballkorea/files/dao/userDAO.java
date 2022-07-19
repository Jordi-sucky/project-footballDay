package com.project.footballkorea.files.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface userDAO {
	
	public int insertUser(
			@Param("loginId") String loginId
			, @Param("password") String password
			, @Param("name") String name
			, @Param("nickname") String nickname
			, @Param("phoneNumber") String phoneNumber
			);
	
	public int signupDuplicatedDAO(@Param("loginId") String loginId);
}
