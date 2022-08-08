package com.project.footballkorea.files.vo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.footballkorea.files.dao.commentDAO;
import com.project.footballkorea.files.model.Comment;

@Service
public class commentVO {
	
	@Autowired
	private commentDAO commentdao;

	public int commentUpVO(int postId, String userNickname , String comment, String iconPath) {
		
		return commentdao.commentUpDAO(postId, userNickname , comment, iconPath);
	}
	
	public List<Comment> commentViewVO(int postId){
		
		return commentdao.commentViewDAO(postId);
	}
}
