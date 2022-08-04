package com.project.footballkorea.files;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.footballkorea.files.vo.newsVO;

@RestController
public class newsRestController {
	
	@Autowired
	private newsVO newsvo;
	
	@PostMapping("/news/test")
	public Map<String, String> test(
			@RequestParam("title") String title,
			@RequestParam("content") String content,
			@RequestParam("league") String league,
			@RequestParam("company") String company,
			@RequestParam("reporter") String reporter,
			@RequestParam("file") MultipartFile file
			){
		
		int count = newsvo.testVO(title, content, file, league, company, reporter);
		Map<String, String> result = new HashMap<>();
		
		if(count == 1 ) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	

}
