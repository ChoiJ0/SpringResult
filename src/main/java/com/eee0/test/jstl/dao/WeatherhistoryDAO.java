package com.eee0.test.jstl.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eee0.test.jstl.model.Weatherhistory;

@Repository
public interface WeatherhistoryDAO {

	List<Weatherhistory> selectWeatherhistoryByList();

	int insertWeatherInput(Weatherhistory weatherhistory);
	
}
