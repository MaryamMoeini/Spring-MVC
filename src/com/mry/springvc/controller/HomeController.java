package com.mry.springvc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mry.springvc.dao.ProjectDAO;
import com.mry.springvc.model.Login;

@Controller
public class HomeController {
	@Autowired
	ProjectDAO projectDAO;
	
	@RequestMapping(value="/home.do")
	public ModelAndView home(HttpServletRequest request, ModelAndView model) throws IOException{
		model.setViewName("index");
		
		return model;
	}
	
	@RequestMapping(value="/index.do")
	public ModelAndView main(HttpServletRequest request, ModelAndView model) throws IOException{
		model.setViewName("project/index");
		Login loggedInUser = (Login)request.getSession().getAttribute("loggedInUser");
		model.addObject("projects", projectDAO.getProjectsByLoggedInUser(loggedInUser.getUserName()));
		return model;
	}
	
	
	
}
