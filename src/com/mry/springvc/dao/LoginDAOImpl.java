package com.mry.springvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;


import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mry.springvc.model.Login;

public class LoginDAOImpl implements LoginDAO{
	private JdbcTemplate jdbcTemplate;
	
	public LoginDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean validateLogin(Login login){
		boolean isUserValid = false;
		String sql = "SELECT * FROM users where userid= ? and pasword = ?";
		
		List<Login> loginDBList = jdbcTemplate.query(sql, new Object[] { login.getUserName(), login.getPassword() }, new RowMapper<Login>() {
			@Override
			public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
				Login loginDBImage = new Login();
	
				loginDBImage.setUserName(rs.getString("userid"));
				loginDBImage.setPassword(rs.getString("pasword"));
				
				return loginDBImage;
			}
		});
		
		if( loginDBList != null && loginDBList.size() > 0 ){
			isUserValid = true;
		}
		
		return isUserValid;
	}
}
