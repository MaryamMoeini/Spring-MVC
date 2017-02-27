package com.mry.springvc.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException; 
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.mry.springvc.dao.ProjectDAO;
import com.mry.springvc.model.Login;
import com.mry.springvc.model.McqItem;
import com.mry.springvc.model.Project;
import com.mry.springvc.model.QuizItem;

@Controller
public class QuizController {
	@Autowired
	ProjectDAO projectDAO;
	
	@RequestMapping(value="/project/itemAdd.do" ,method = RequestMethod.GET)
	public ModelAndView displayQuizItem(HttpServletRequest request) throws IOException{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("project/itemAdd");
		Login loggedInUser = (Login)request.getSession().getAttribute("loggedInUser");
		Project project  = new Project();
		project.setAuthor(loggedInUser.getUserName());
		modelAndView.addObject("project", project);
		return modelAndView;
	}
	
	@RequestMapping(value="/project/{prjId}/delete.do" ,method = RequestMethod.GET)
	public ModelAndView delete(HttpServletRequest request, ModelAndView model,@PathVariable String prjId) throws IOException{
		projectDAO.delete(prjId);
		model.setViewName("redirect:/index.do");
		Login loggedInUser = (Login)request.getSession().getAttribute("loggedInUser");
		model.addObject("projects", projectDAO.getProjectsByLoggedInUser(loggedInUser.getUserName()));
		return model;
	}
	
	@RequestMapping(value="/project/saveProject.do" ,method = RequestMethod.POST)
	public ModelAndView saveProject(@ModelAttribute Project project, HttpServletRequest request)throws IOException{
		ModelAndView modelAndView = new ModelAndView();
		projectDAO.saveProject(project);
		request.getSession().setAttribute("project", project);
		modelAndView.addObject("quizitem", new QuizItem());
		modelAndView.setViewName("project/quiz");
		return modelAndView;
	}
	
	@RequestMapping(value="/project/quiz.do" ,method = RequestMethod.POST)
	public ModelAndView saveQuiz(@ModelAttribute QuizItem quizItem, HttpServletRequest request)throws IOException{
		ModelAndView modelAndView = new ModelAndView();
		
		Project project = (Project)request.getSession().getAttribute("project");
		quizItem.setParentKey(String.valueOf(project.getProjectId()));
		request.getSession().setAttribute("quizItem", quizItem);
		projectDAO.saveQuizItem(quizItem);
		modelAndView.addObject("qtypeitem", new QuizItem());
		modelAndView.setViewName("project/qType");
		return modelAndView;
	}
	
	@RequestMapping(value="/project/qType.do",method = RequestMethod.POST)
	public ModelAndView setQType(@ModelAttribute QuizItem qTypeItem,HttpServletRequest request) throws IOException{
		ModelAndView modelAndView = new ModelAndView();
		request.getSession().setAttribute("qTypeItem",qTypeItem);
		String itemType=request.getParameter("itemType");
		
		if(itemType.equals("MC")){
		modelAndView.addObject("mcqItem", new McqItem());
		modelAndView.setViewName("questionType/MCQ");
		}else if(itemType.equals("Linked")){
			modelAndView.addObject("mcqItem", new McqItem());
			modelAndView.setViewName("questionType/LikertScale");
			
		}else if(itemType.equals("Media")){
			modelAndView.addObject("mcqItem", new McqItem());
			modelAndView.setViewName("questionType/Media");
		}else if(itemType.equals("Essay")){
			modelAndView.addObject("mcqItem", new McqItem());
			modelAndView.setViewName("questionType/Essay");
		}
		return modelAndView;
	}
	
	@RequestMapping(value="/questionType/MCQ.do", method = RequestMethod.POST)
	public ModelAndView saveMCQuestion(@ModelAttribute McqItem mcqItem, HttpServletRequest request)throws IOException{
		ModelAndView modelAndView = new ModelAndView();
		QuizItem quizitem=(QuizItem)request.getSession().getAttribute("quizItem");
		mcqItem.setQuiz_id(String.valueOf(quizitem.getId()));
		QuizItem qType=(QuizItem)request.getSession().getAttribute("qTypeItem");
		mcqItem.setQType(qType.getItemType());
		
		
		projectDAO.saveQuestion(mcqItem);
		modelAndView.addObject("qtypeitem", new QuizItem());
		modelAndView.setViewName("project/qType");
		
		return modelAndView;
		
	}
	

	@RequestMapping(value="/questionType/LikerScale.do",method = RequestMethod.POST)
	public ModelAndView saveLSQuestion(@ModelAttribute McqItem likerQuestion, HttpServletRequest request)throws IOException{
		ModelAndView modelAndView = new ModelAndView();
		QuizItem quizitem=(QuizItem)request.getSession().getAttribute("quizItem");
		likerQuestion.setQuiz_id(String.valueOf(quizitem.getId()));
		QuizItem qType=(QuizItem)request.getSession().getAttribute("qTypeItem");
		likerQuestion.setQType(qType.getItemType());
		likerQuestion.setNumOfPoints(qType.getPointType());
		
		int numofpoint= qType.getPointType();
		System.out.println(numofpoint);
		if(numofpoint== 3){
			likerQuestion.setOption1("very important");
			likerQuestion.setOption2("Natural");
			likerQuestion.setOption3("not important");
		}else if(numofpoint==4){
			likerQuestion.setOption1("very important");
			likerQuestion.setOption2("Natural");
			likerQuestion.setOption3("Slightly important");
			likerQuestion.setOption4("not important");
			
		}else if(numofpoint==5){
			likerQuestion.setOption1("very important");
			likerQuestion.setOption2("Natural");
			likerQuestion.setOption3("Slightly important");
			likerQuestion.setOption4("Fairly important");
			likerQuestion.setOption5("not important");
		}
		projectDAO.saveQuestion(likerQuestion);
		modelAndView.addObject("qtypeitem", new QuizItem());
		modelAndView.setViewName("project/qType");
		return modelAndView;
		
	}
	
	@RequestMapping(value="/questionType/Media.do",method = RequestMethod.POST)
	public ModelAndView saveAudioQuestion(@ModelAttribute McqItem media, HttpServletRequest request)throws IOException{
		ModelAndView modelAndView = new ModelAndView();
		QuizItem quizitem=(QuizItem)request.getSession().getAttribute("quizItem");
		media.setQuiz_id(String.valueOf(quizitem.getId()));
		QuizItem qType=(QuizItem)request.getSession().getAttribute("qTypeItem");
		media.setQType(qType.getItemType());
		

		
		projectDAO.saveQuestion(media);
		modelAndView.addObject("qtypeitem", new QuizItem());
		modelAndView.setViewName("project/qType");
		return modelAndView;
		
	}

	@RequestMapping(value="/questionType/Essay.do",method = RequestMethod.POST)
	public ModelAndView saveEssayQuestion(@ModelAttribute McqItem essay, HttpServletRequest request)throws IOException{
		ModelAndView modelAndView = new ModelAndView();
		QuizItem quizitem=(QuizItem)request.getSession().getAttribute("quizItem");
		essay.setQuiz_id(String.valueOf(quizitem.getId()));
		QuizItem qType=(QuizItem)request.getSession().getAttribute("qTypeItem");
		essay.setQType(qType.getItemType());
		
		projectDAO.saveQuestion(essay);
		modelAndView.addObject("qtypeitem", new QuizItem());
		modelAndView.setViewName("project/qType");
		return modelAndView;
		
	}
	
	@RequestMapping(value="/project/viewQuiz.do", method=RequestMethod.POST)
	public ModelAndView viewQuiz(HttpServletRequest request, ModelAndView model)throws IOException{
		QuizItem quizeId=(QuizItem)request.getSession().getAttribute("quizItem");
		McqItem mcq= new McqItem();
		model.addObject("questions",projectDAO.getQuizbyId(quizeId.getId()));
		
		//Start Uploading process
		
		
		
		model.setViewName("project/viewQuiz");
		return model;
	}
	
	

}
