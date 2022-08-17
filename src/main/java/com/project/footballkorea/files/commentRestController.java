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
import com.project.footballkorea.files.vo.postVO;

@RestController
public class commentRestController {
	
	@Autowired
	private commentVO commentvo;

	@Autowired
	private postVO postvo;
	
	@PostMapping("/freeboard/commentUp")
	public Map<String, String> commentUp(
			@RequestParam("postId") int postId
			, @RequestParam("comment") String comment
			, HttpServletRequest request
			){
		
		HttpSession session = request.getSession();
		String userNickname = (String) session.getAttribute("userNickname");
		String userIconPath = (String) session.getAttribute("userIconPath");
		int userId = (int) session.getAttribute("userId");
		
		int count = commentvo.commentUpVO(userId, postId, userNickname , comment, userIconPath);
		postvo.countCommentsVO(postId);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	@PostMapping("/freeboard/commentFix")
	public Map<String, String> commentFix(
			@RequestParam("comment") String comment
			, @RequestParam("id") int id
			){
		
		int count = commentvo.commentFixVO(comment, id);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			
			result.put("result", "success");
		} else {
			
			result.put("result", "fail");
		}
	
		return result;
	}
	
	@PostMapping("/freeboard/commentDel")
	public Map<String, String> commentDel(
			@RequestParam("id") int id
			, @RequestParam("postId") int postId
			){
		
		Map<String, String> result = new HashMap<>();
		
		
		
		int count = commentvo.commentDelVO(id);
		postvo.countCommentsDelVO(postId);
		
		if(count == 1) {
			
			result.put("result", "success");
		} else {
			
			result.put("result", "fail");
		}
		
		return result;
	}
	
	

}
