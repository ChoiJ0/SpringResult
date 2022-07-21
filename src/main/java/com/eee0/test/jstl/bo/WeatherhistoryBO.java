package com.eee0.test.jstl.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eee0.test.jstl.dao.WeatherhistoryDAO;
import com.eee0.test.jstl.model.Weatherhistory;

@Service
public class WeatherhistoryBO {

	@Autowired WeatherhistoryDAO weatherhistoryDAO;
	
	// 날씨 정보 리스트 가져오기
	public List<Weatherhistory> getWeatherhistoryByList() {
		
		return weatherhistoryDAO.selectWeatherhistoryByList();
		
	}
	
	// 날씨 정보 입력하기
	public int addWeatherInput(Weatherhistory weatherhistory) {
		
		return weatherhistoryDAO.insertWeatherInput(weatherhistory);
		
	}

}
