package com.project.footballkorea.files.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.project.footballkorea.files.model.User;

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
	
	public User getUserDAO(@Param("loginId") String loginId, @Param("password") String password);
}
