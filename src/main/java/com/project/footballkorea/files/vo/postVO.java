package com.project.footballkorea.files.vo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.footballkorea.files.dao.postDAO;

@Service
public class postVO {
	
	@Autowired
	private postDAO postdao;
	
	public int postUpVO(int userId, String userName, String title, String content) {
		
		return postdao.postUpDAO(userId, userName, title, content);
	}
}
