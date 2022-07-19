package com.project.footballkorea.files.vo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.footballkorea.common.EncryptUtils;
import com.project.footballkorea.files.dao.userDAO;

@Service
public class userVO {
	
	@Autowired
	private userDAO userdao;
	
	public int addUser(String loginId, String password, String name, String nickname, String phoneNumber) {
		
		String encPassword = EncryptUtils.md5(password);
		return userdao.insertUser(loginId, encPassword, name, nickname, phoneNumber);
	}
	
	public boolean signupDuplicatedVO(String loginId) {
		
		int count = userdao.signupDuplicatedDAO(loginId);
		
		if(count == 1) {
			return true;
		} else {
			return false;
		}
		
	}
	
}
