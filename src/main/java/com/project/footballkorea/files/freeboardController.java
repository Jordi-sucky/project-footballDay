package com.project.footballkorea.files;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class freeboardController {
	
	@GetMapping("/freeboard/freeboardMainView")
	public String freeboardMainView() {
		
		return "/Views/freeboard/freeboardView";
	}
}
