package com.eee0.test.jstl.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eee0.test.jstl.model.Weatherhistory;

@Repository
public interface WeatherhistoryDAO {
	
	// 날씨 정보 모두 가져오기
	public List<Weatherhistory> selectWeatherhistoryByList();
	
	// 날씨 정보 삽입
	public int insertWeatherInput(Weatherhistory weatherhistory);
	
//	public int insertWeatherInput(
//			@Param("date") String date
//			, @Param("weather") String weather
//			, @Param("temperatures") double temperatures
//			, @Param("precipitation") double precipitation
//			, @Param("microDust") String microDust
//			, @Param("windSpeed") double windSpeed
//			);
	
	
	
}
