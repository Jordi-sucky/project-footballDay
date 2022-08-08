package com.project.footballkorea.files.vo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.footballkorea.files.dao.commentDAO;

@Service
public class commentVO {
	
	@Autowired
	private commentDAO commentdao;
	
	public int commentUpVO(int postId, String userName, String comment, String iconPath) {
		
		return commentdao.commentUpDAO(postId, userName, comment, iconPath);
	}
}
