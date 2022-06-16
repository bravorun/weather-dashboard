package com.weatherapp.model.dao.sensordata;

import java.sql.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public interface SensorDataDao extends JpaRepository<SensorData, String> {
	public List<SensorData> findBycreatedAtBetween(Date start, Date end);
}