package com.webPro03;

import com.webPro03.*;
import java.sql.*;
import java.util.*;

public class UserBean {
	
	private String userId;
	private String password;
	
	public UserBean() {
		super();
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String id) {
		this.userId = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void clear() {
		setUserId(null);
		setPassword(null);
	}
	
	public UserDTO signUp() throws SQLException {
		UserInfo userInfo = new UserInfo();
		
		Map<String,String> signUpData = new HashMap<>();
		signUpData.put("id", this.userId);
		signUpData.put("password", this.password);
		
		return userInfo.signUp(signUpData);
	}
	
}
