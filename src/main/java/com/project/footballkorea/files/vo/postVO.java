package com.project.footballkorea.files.vo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.footballkorea.files.dao.postDAO;
import com.project.footballkorea.files.model.Freeboard;

@Service
public class postVO {
	
	@Autowired
	private postDAO postdao;
	
	public int postUpVO(int userId, String userNickname, String userIconPath ,String title, String content) {
		
		return postdao.postUpDAO(userId, userNickname, userIconPath, title, content);
	}
	
	public List<Freeboard> selectPostListVO(){
		
		return postdao.selectPostListDAO();
	}
	
	public Freeboard selectPostDetailVO(int id) {
		
		return postdao.selectPostDetailDAO(id);
	}
	
	public int countVisitVO(int id) {
		
		return postdao.countVisitDAO(id);
	}
	
	public int countCommentsVO(int id) {
		
		return postdao.countCommentsDAO(id);
	}
}
