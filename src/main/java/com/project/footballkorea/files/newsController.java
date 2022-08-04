package com.project.footballkorea.files;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.project.footballkorea.files.model.News;
import com.project.footballkorea.files.vo.newsVO;

@Controller
public class newsController {
	
	@Autowired
	private newsVO newsvo;
	
	@ModelAttribute("newsInfo")
	public List<News> newsInfo(){
		
		List<News> news = newsvo.newsInfoVO();
		
		return news;
	}
	
	@GetMapping("/news/newsMainView")
	public String newsView(Model model) {
		
		return "/Views/news/newsView";
	}
	
	@GetMapping("/insertTest")
	public String insertTest() {
		
		return "/test";
	}
}
