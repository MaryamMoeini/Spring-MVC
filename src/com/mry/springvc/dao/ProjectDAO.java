package com.mry.springvc.dao;

import java.util.List;

import com.mry.springvc.model.McqItem;
import com.mry.springvc.model.Project;
import com.mry.springvc.model.QuizItem;

public interface ProjectDAO {
	public void saveProject(Project project);
	
	public void saveQuizItem(QuizItem quizItem);
	
	public void saveQuestion(McqItem mcqItem);
	
	public void delete(String prjId);
	


	public List<McqItem> getQuizbyId(int id);
	public List<Project> getProjectsByLoggedInUser(String userId);

	
}
