package com.project.footballkorea.files;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.footballkorea.files.model.Rank;
import com.project.footballkorea.files.vo.rankVO;

@Controller
public class freeboardController {
	
	@Autowired
	private rankVO rankvo;
	
	@GetMapping("/freeboard/freeboardMainView")
	public String freeboardMainView(Model model) {
		
		List<Rank> rank = rankvo.rankListVO();
		
		model.addAttribute("rank", rank);
		
		return "/Views/freeboard/freeboardView";
	}
	
	@GetMapping("/freeboard/postUp")
	public String freeboardPostUp() {
		
		return "/Views/freeboard/postUp";
	}
	
	@GetMapping("/freeboard/postDetail")
	public String freeboardPostDetail() {
		
		return "/Views/freeboard/postDetail";
	}
}
