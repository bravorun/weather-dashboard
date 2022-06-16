package com.weatherapp.web.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.weatherapp.model.service.sensordata.SensorDataService;

@Controller
public class SensorDataController {
	SensorDataService sensorData;
	public SensorDataController(SensorDataService sensorData) {
		this.sensorData=sensorData;
		
	}
	@GetMapping(path = "/data")
	public ModelAndView accessdenied(Principal principal, ModelAndView mv) {
		mv.setViewName("home");
		System.out.println(sensorData.getall().toString());
		return mv;
	}
}
