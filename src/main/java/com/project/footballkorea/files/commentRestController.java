package com.project.footballkorea.files;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.footballkorea.files.vo.commentVO;

@RestController
public class commentRestController {
	
	@Autowired
	private commentVO commentvo;


	
	@PostMapping("/freeboard/commentUp")
	public Map<String, String> ttest(
			@RequestParam("postId") int postId
			, @RequestParam("comment") String comment
			, HttpServletRequest request
			){
		
		HttpSession session = request.getSession();
		String userNickname = (String) session.getAttribute("userNickname");
		String userIconPath = (String) session.getAttribute("userIconPath");
		
		int count = commentvo.commentUpVO(postId, userNickname , comment, userIconPath);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	

}
