package com.weatherapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import com.weatherapp.model.dao.sensordata.SensorData;
import com.weatherapp.model.dao.user.User;
import com.weatherapp.model.service.sensordata.SensorDataService;
import com.weatherapp.model.service.user.UserService;
import org.springframework.boot.CommandLineRunner;

@SpringBootApplication
public class WeatherappApplication extends SpringBootServletInitializer  implements CommandLineRunner {

	@Autowired
	private SensorDataService sensorDataService;
	@Autowired
	private UserService userService;

	
	public static void main(String[] args) {
		SpringApplication.run(WeatherappApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		
		userService.addUser(new User("Ranjan", "Ranjan12",  "keshav@gmail.com"));
		sensorDataService.Adddata(new SensorData(12.5f,456.3f,49.3f,223.3f));
		

	}

	

}
