package com.project.footballkorea.files;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.footballkorea.files.model.Rank;
import com.project.footballkorea.files.vo.rankVO;

@Controller
public class noticeController {

	@Autowired
	private rankVO rankvo;
	
	@GetMapping("/notice/noticeMainView")
	public String noticeView(Model model) {
		
		List<Rank> rank = rankvo.rankListVO();
		
		model.addAttribute("rank", rank);
		
		return "/Views/notice/noticeView";
	}
}
