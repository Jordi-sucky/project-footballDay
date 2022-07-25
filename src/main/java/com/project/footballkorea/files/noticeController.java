package com.project.footballkorea.files;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class noticeController {

	@GetMapping("/notice/noticeMainView")
	public String noticeView() {
		
		return "/Views/notice/noticeView";
	}
}
