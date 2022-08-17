package com.project.footballkorea.files;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class matchController {
	
	@GetMapping("/match/matchView")
	public String matchView() {
		
		return "/Views/match/matchView";
	}
}
