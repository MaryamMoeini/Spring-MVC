package com.mry.springvc.dao;

import java.sql.Connection; 
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.mry.springvc.model.McqItem;
import com.mry.springvc.model.Project;
import com.mry.springvc.model.QuizItem;

public class ProjectDAOImpl implements ProjectDAO{
	
	private JdbcTemplate jdbcTemplate;

	public ProjectDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void saveProject(final Project project) {
		final String projectSql = " insert into projects(title,domain,author,lang,endDate,created,project_type) values ( ?, ?, ?, ?, ?, ?, ?) ";
		KeyHolder keyHolder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	            PreparedStatement ps = connection.prepareStatement(projectSql, Statement.RETURN_GENERATED_KEYS);
	            ps.setString(1, project.getTitle());
	            ps.setString(2, project.getDomain());
	            ps.setString(3, project.getAuthor());
	            ps.setString(4, project.getLang());
	            ps.setString(5, null);
	            ps.setDate(6, new Date(new java.util.Date().getTime()));
	            ps.setString(7, null);
	            return ps;
	        }
	    }, keyHolder);
		
		final int projectSeq = keyHolder.getKey().intValue();
		project.setProjectId(projectSeq);
		
	}
	@Override
	public void saveQuizItem(final QuizItem quizItem){
		final String projectSql = " insert into quiz_item(topic,subTopic,item,key1,project_id,created,category,negative,anchor,esposureTime) values ( ?, ?, ?, ?, ?, ?, ?, ? ,?,?) ";
		KeyHolder keyHolder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	            PreparedStatement ps = connection.prepareStatement(projectSql, Statement.RETURN_GENERATED_KEYS);
	            ps.setString(1, quizItem.getTopic());
	            ps.setString(2, quizItem.getSubTopic());
	            ps.setString(3, quizItem.getItemId());
	            ps.setString(4, null);
	            ps.setString(5, quizItem.getParentKey());
	            ps.setDate(6, new Date(new java.util.Date().getTime()));
	            ps.setString(7, quizItem.getItemCategory());
	            ps.setString(8, quizItem.getNegativeItem());
	            ps.setString(9, quizItem.getAnchorItem());
	            ps.setInt(10, quizItem.getExposureTime());
	            return ps;
	        }
	    }, keyHolder);
		
		final int seq = keyHolder.getKey().intValue();
		quizItem.setId(seq);
	}
	
	@Override
	public void saveQuestion(final McqItem mcqItem){
		final String projectSql="insert into questions(quiz_id, question, option1, option2, option3,option4, option5,created, QType, correct_Answer,img1,img2,img3,img4,img5,NumOfPoints) values (?, ? , ? , ? , ?, ? ,? ,? ,?,?,?,?,?,?,?,?)";
		KeyHolder keyHolder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement(projectSql, Statement.RETURN_GENERATED_KEYS);
				ps.setString(1, mcqItem.getQuiz_id());
				ps.setString(2, mcqItem.getQuestion());
				ps.setString(3, mcqItem.getOption1());
				ps.setString(4, mcqItem.getOption2());
				ps.setString(5, mcqItem.getOption3());
				ps.setString(6, mcqItem.getOption4());
				ps.setString(7, mcqItem.getOption5());
				ps.setDate(8,  new Date(new java.util.Date().getTime()));
				ps.setString(9, mcqItem.getQType());
				ps.setString(10, null);
				ps.setBytes(11,mcqItem.getImg1());
				ps.setBytes(12, mcqItem.getImg2());
				ps.setBytes(13, mcqItem.getImg3());
				ps.setBytes(14, mcqItem.getImg4());
				ps.setBytes(15, mcqItem.getImg5());
				ps.setInt(16, mcqItem.getNumOfPoints());
				return ps;
				
			}
			
			
		}, keyHolder);
		
		final int mcqseq=keyHolder.getKey().intValue();
		mcqItem.setId(mcqseq);
	}
	 
	public void delete(final String prjId){
		final String projectSql="delete from projects where id=? ";
		final String quizSql="delete from quiz_item where project_id=?";
		//List queries=new ArrayList();
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement(quizSql);
				ps.setString(1,prjId);
				return ps;
				
			}
		});
		
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement(projectSql);
				ps.setString(1,prjId);
				return ps;
				
			}
		});
	}
	
	public List<Project> getProjectsByLoggedInUser(String userId){
		final SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		List<Project> projects = null;
		final String projectSql = " select * from projects where author = ? order by created desc ";
		projects = jdbcTemplate.query(projectSql, new Object[]{userId}, new RowMapper<Project>() {

			@Override
			public Project mapRow(ResultSet rs, int rowNum) throws SQLException {
				Project project = new Project();
				project.setProjectId(Integer.parseInt(rs.getString("id")));
				project.setTitle( rs.getString("title"));
				project.setDomain( rs.getString("domain"));
				project.setAuthor(rs.getString("author"));
				project.setLang(rs.getString("lang"));
			    //endDate
				Calendar cal = Calendar.getInstance(); 
				cal.setTime(rs.getDate("created"));
				project.setCreated(sdf.format(cal.getTime()));
			   // project_type
				//id
				return project;
			}
			
		});
		
		return projects;
	}
	
	public List<McqItem> getQuizbyId(int id){
		List<McqItem> questions=null;
		final String quizSql="select * from questions where quiz_id=?";
		questions =  jdbcTemplate.query(quizSql, new Object[]{id}, new RowMapper<McqItem>(){

			@Override
			public McqItem mapRow(ResultSet rs, int rowNum) throws SQLException {
				McqItem mcqitem= new McqItem();
				mcqitem.setQType(rs.getString("QType"));
				mcqitem.setQuestion(rs.getString("question"));
				mcqitem.setOption1(rs.getString("option1"));
				mcqitem.setImg1(rs.getBytes("img1"));
				mcqitem.setOption2(rs.getString("option2"));
				mcqitem.setOption3(rs.getString("option3"));
				mcqitem.setOption4(rs.getString("option4"));
				mcqitem.setOption5(rs.getString("option5"));
				return mcqitem;
			}
	});
		return questions;
	}
}
