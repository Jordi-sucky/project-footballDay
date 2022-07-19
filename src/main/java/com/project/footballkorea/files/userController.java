package com.project.footballkorea.files;

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
}
