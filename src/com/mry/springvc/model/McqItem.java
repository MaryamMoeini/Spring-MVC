package com.mry.springvc.model;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;
public class McqItem {
	private int id;
	private String QType;
	private String quiz_id;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String option5;
	private byte[] img1;
	private byte[] img2;
	private byte[] img3;
	private byte[] img4;
	private byte[] img5;
	private int numOfPoints;
	
	public int getNumOfPoints() {
		return numOfPoints;
	}
	public void setNumOfPoints(int numOfPoints) {
		this.numOfPoints = numOfPoints;
	}
	public byte[] getImg1() {
		return img1;
	}
	public void setImg1(byte[] img1) {
		this.img1 = img1;
	}
	public byte[] getImg2() {
		return img2;
	}
	public void setImg2(byte[] img2) {
		this.img2 = img2;
	}
	public byte[] getImg3() {
		return img3;
	}
	public void setImg3(byte[] img3) {
		this.img3 = img3;
	}
	public byte[] getImg4() {
		return img4;
	}
	public void setImg4(byte[] img4) {
		this.img4 = img4;
	}
	public byte[] getImg5() {
		return img5;
	}
	public void setImg5(byte[] img5) {
		this.img5 = img5;
	}
	private String correctAnswer;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getQType() {
		return QType;
	}
	public void setQType(String qType) {
		QType = qType;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public String getOption5() {
		return option5;
	}
	public void setOption5(String option5) {
		this.option5 = option5;
	}
	public String getCorrectAnswer() {
		return correctAnswer;
	}
	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}
	private String parentKey;
	
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	
	
	public String getParentKey() {
		return parentKey;
	}
	public void setParentKey(String parentKey) {
		this.parentKey = parentKey;
	}
	public String getQuiz_id() {
		return quiz_id;
	}
	public void setQuiz_id(String quiz_id) {
		this.quiz_id = quiz_id;
	}
	
}
