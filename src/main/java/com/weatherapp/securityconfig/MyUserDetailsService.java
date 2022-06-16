package com.weatherapp.securityconfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.weatherapp.model.dao.user.User;
import com.weatherapp.model.service.user.UserService;


@Service
public class MyUserDetailsService implements UserDetailsService {

private UserService userService;
	
	@Autowired
	public MyUserDetailsService(UserService userService) {
		this.userService = userService;
	}
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user= userService.findByUsername(username);
		if(user==null)
		{
			throw new UsernameNotFoundException("User is not found");
		}
		
		// need to convert our User into User form UserDetails that spring security understands
		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),AuthorityUtils.createAuthorityList("ROLE_ADMIN"));
	}
	

}
