package com.project.footballkorea.files;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.footballkorea.files.model.User;
import com.project.footballkorea.files.vo.userVO;

@RestController
public class userRestController {

	@Autowired
	private userVO uservo;
	
	@PostMapping("/user/signup")
	public Map<String, String> signup(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, @RequestParam("name") String name
			, @RequestParam("nickname") String nickname
			, @RequestParam("phoneNumber") String phoneNumber
			) {
		
		int count =uservo.addUser(loginId, password, name, nickname, phoneNumber);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		return result;
	}
	
	@PostMapping("/user/signupDuplicated")
	public Map<String, String> signupDuplicated(@RequestParam("loginId")String loginId) {
		
		Map<String, String> result = new HashMap<>();
		
		boolean availableId = uservo.signupDuplicatedVO(loginId);
		
		if(availableId == true) {
			result.put("result", "fail");
		} else {
			result.put("result", "success");
		}
		
		
		return result;
	}
	
	@PostMapping("/user/signin")
	public Map<String, String> signin(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, HttpServletRequest request
			){
		
		User user = uservo.getUserVO(loginId, password);
		
		Map<String, String> result = new HashMap<>();
		
		if(user != null) {
			result.put("result", "success");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("userId", user.getId());
			session.setAttribute("userLoginId", user.getLoginId());
			session.setAttribute("userName", user.getName());
			session.setAttribute("userNickname", user.getNickname());
			session.setAttribute("userIconPath", user.getIconPath());
			
			
		} else {
			result.put("result", "fail");
		}
		
		return result;	
	}
}
