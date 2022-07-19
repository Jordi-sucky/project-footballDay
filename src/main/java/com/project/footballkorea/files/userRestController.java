package com.project.footballkorea.files;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
}
