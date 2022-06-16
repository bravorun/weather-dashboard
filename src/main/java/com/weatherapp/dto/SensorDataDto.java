package com.weatherapp.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor 
@AllArgsConstructor
public class SensorDataDto {
	private float temperature;
	private float humidity;
	private float altitude;
	private float presure;
}
