package com.weatherapp.model.service.sensordata;

import java.sql.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.weatherapp.model.dao.sensordata.SensorData;
import com.weatherapp.model.dao.sensordata.SensorDataDao;
@Service
@Transactional
public class SensorDataServiceImpl implements SensorDataService {
	private SensorDataDao sensorDataDao;
	@Autowired
	public SensorDataServiceImpl(SensorDataDao sensorDataDao) {
		this.sensorDataDao=sensorDataDao;
	}
	@Override
	public List<SensorData> getall() {
		
		return sensorDataDao.findAll();
	}
	@Override
	public void Adddata(SensorData data) {
		sensorDataDao.save(data);
	}
	@Override
	public List<SensorData> getByDate(Date start, Date end) {
		return sensorDataDao.findBycreatedAtBetween(start, end);
	}


}
