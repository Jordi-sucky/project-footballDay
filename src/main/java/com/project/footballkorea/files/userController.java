package com.project.footballkorea.files;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.project.footballkorea.files.model.Rank;
import com.project.footballkorea.files.vo.rankVO;

@Controller
public class userController {
	
	@Autowired
	private rankVO rankvo;
	
	@ModelAttribute("rank")
	public List<Rank> rank(){
		
		List<Rank> rank = rankvo.rankListVO();
		return rank;
	}

	@GetMapping("/footballkorea")
	public String main(Model model) {
	
		
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
