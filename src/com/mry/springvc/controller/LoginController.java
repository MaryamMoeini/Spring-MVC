package com.mry.springvc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mry.springvc.dao.LoginDAO;
import com.mry.springvc.model.Login;

@Controller
public class LoginController {
	@Autowired
	private LoginDAO loginDAO;
	
	@RequestMapping(value="/login.do")
	public ModelAndView login(HttpServletRequest request) throws IOException{
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		
		return model;
	}
	
	/*@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public ModelAndView loginSurvey(HttpServletRequest request) {
		return new ModelAndView("redirect:/logIn");
	}*/
	
	@RequestMapping(value = "/validateLogin.do", method = RequestMethod.POST)
	public ModelAndView validateLogin(@ModelAttribute Login login, HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		if( loginDAO.validateLogin(login) ){
			request.getSession().setAttribute("loggedInUser", login);
			modelAndView.setViewName("redirect:/index.do");
		} else {
			modelAndView.setViewName("redirect:/");
		}
		
		return modelAndView;
	}
}
