package com.mry.springvc.dao;

import com.mry.springvc.model.Login;

public interface LoginDAO {
	public boolean validateLogin(Login login);
}
