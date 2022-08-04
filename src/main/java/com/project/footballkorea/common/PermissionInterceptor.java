package com.project.footballkorea.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class PermissionInterceptor implements HandlerInterceptor{
	//��û�� ���� ��
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		
		//�α��� ����
		HttpSession session = request.getSession();	
		
		//���� ��û�� url�� ��� (uri???)  ex)"/user/~~~";
		String uri = request.getRequestURI();
		
		
		if(session.getAttribute("userId") != null) {  //�α��� ����
			
			//�α��� ȭ���, ȸ������ȭ�� ���� ??
			if(uri.startsWith("/user/")) {
				response.sendRedirect("/footballkorea");
				return false;
			}
			
		} 
		//else {  //�� �α��� ����
//			// ����Ʈ ������ ��û��
//			// �α��� �������� ��������
//			if(uri.startsWith("/post/")) {
//				response.sendRedirect("");
//				return false;
//			}
//		}
		
		return true;
		
	}
	
	//response ö�� ��
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response
			,Object handler, ModelAndView modelAndView) {
		
	}
	
	//������ �Ϸ� �Ǿ��� ����
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response
			,Object handler, Exception ex) {
		
	}
}