package com.project.footballkorea.files;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.footballkorea.files.model.Comment;
import com.project.footballkorea.files.model.Freeboard;
import com.project.footballkorea.files.model.Rank;
import com.project.footballkorea.files.vo.commentVO;
import com.project.footballkorea.files.vo.postVO;
import com.project.footballkorea.files.vo.rankVO;

@Controller
public class freeboardController {
	
	@Autowired
	private rankVO rankvo;
	
	@Autowired
	private postVO postvo;
	
	@Autowired
	private commentVO commentvo;
	
	@GetMapping("/freeboard/freeboardMainView")
	public String freeboardMainView(Model model) {
		
		List<Rank> rank = rankvo.rankListVO();
		List<Freeboard> postList = postvo.selectPostListVO();
		
		model.addAttribute("postList", postList);
		model.addAttribute("rank", rank);
		
		
		return "/Views/freeboard/freeboardView";
	}
	
	@GetMapping("/freeboard/postUp")
	public String freeboardPostUp() {
		
		return "/Views/freeboard/postUp";
	}
	
	@GetMapping("/freeboard/postDetail")
	public String freeboardPostDetail(@RequestParam("id") int id, Model model
			
			) {
		
		
		Freeboard post = postvo.selectPostDetailVO(id);
		
		
		List<Comment> comment = commentvo.commentViewVO(id);
		
		model.addAttribute("post", post);
		model.addAttribute("comment", comment);
		
		return "/Views/freeboard/postDetail";
	}
}
