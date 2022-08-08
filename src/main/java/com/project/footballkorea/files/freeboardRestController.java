package com.project.footballkorea.files;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.footballkorea.files.vo.postVO;

@RestController
public class freeboardRestController {
	
	@Autowired
	private postVO postvo;
	
	@PostMapping("/freeboard/postUp")
	public Map<String, String> postUp(
			@RequestParam("title") String title
			, @RequestParam("content") String content
			, HttpServletRequest request
			){
		
		Map<String, String> result = new HashMap<>();
		HttpSession session = request.getSession();
		
		int userId = (int) session.getAttribute("userId");
		String userName = (String) session.getAttribute("userName");
		
		int count = postvo.postUpVO(userId,userName,title,content);
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
}
