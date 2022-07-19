package com.project.footballkorea.files;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class userController {
	
	@GetMapping("/footballkorea")
	public String main() {
		
		return "/Views/mainView";
	}
	
	@GetMapping("/user/signIn")
	public String signIn() {
		
		return "/Views/login/signInView";
	}
	
	@GetMapping("/user/signUp")
	public String signUp() {
		
		return "/Views/login/signUpView";
	}
	
	@GetMapping("/user/signOut")
	public String signOut(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("userId");
		session.removeAttribute("userLoginId");
		session.removeAttribute("userName");
		session.removeAttribute("userNickname");
		
		return "redirect:/footballkorea";
	}
}
