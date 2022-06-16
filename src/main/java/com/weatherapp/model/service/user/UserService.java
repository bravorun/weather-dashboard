package com.weatherapp.model.service.user;

import com.weatherapp.model.dao.user.User;

public interface UserService {
	public void addUser(User user);
	public User findByUsername(String username);
	public User getUserByUserId(String id);

}
