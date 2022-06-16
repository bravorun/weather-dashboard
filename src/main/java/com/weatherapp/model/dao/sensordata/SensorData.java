package com.weatherapp.model.dao.sensordata;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Sensor_data")
public class SensorData {
	public SensorData(float d, float e, float f, float g) {
		this.altitude=d;
		this.humidity=e;
		this.presure=f;
		this.temperature=g;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pk;
	@CreationTimestamp
	private Date createdAt;
	private float temperature;
	private float presure;
	private float humidity;
	private float altitude;
}