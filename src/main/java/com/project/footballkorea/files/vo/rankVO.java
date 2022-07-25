package com.project.footballkorea.files.vo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.footballkorea.files.dao.rankDAO;
import com.project.footballkorea.files.model.Rank;

@Service
public class rankVO {
	
	@Autowired
	private rankDAO rankdao;

	public List<Rank> rankListVO() {
		
		
	
		return rankdao.rankListDAO();
	}
}
