package com.weatherapp.model.service.sensordata;

import java.sql.Date;
import java.util.List;

import com.weatherapp.model.dao.sensordata.SensorData;

public interface SensorDataService {

	public void Adddata(SensorData data);
	public List<SensorData> getall();
	public List<SensorData> getByDate(Date start,Date end);
}
