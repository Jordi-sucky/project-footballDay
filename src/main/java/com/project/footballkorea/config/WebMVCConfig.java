package com.project.footballkorea.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.project.footballkorea.common.FileManagerService;
import com.project.footballkorea.common.PermissionInterceptor;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer{
	
	@Autowired
	PermissionInterceptor permissionInterceptor;
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/images/**")// ���������� �����ϵ��� �ϴ� path
		.addResourceLocations("file:///"+ FileManagerService.FILE_UPLOAD_PATH);
	}
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(permissionInterceptor)
		.addPathPatterns("/**") //��� ��ΰ� ���ͼ��͸� ���ļ� ������� ����
		.excludePathPatterns("/static/**","/images/**","/user/signOut"); //������ ���
	}
	
}