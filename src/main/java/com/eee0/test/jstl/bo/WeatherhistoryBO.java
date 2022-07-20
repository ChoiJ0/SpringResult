package com.eee0.test.jstl.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eee0.test.jstl.dao.WeatherhistoryDAO;
import com.eee0.test.jstl.model.Weatherhistory;

@Service
public class WeatherhistoryBO {

	@Autowired WeatherhistoryDAO weatherhistoryDAO;
	
	public List<Weatherhistory> getWeatherhistoryByList() {
		
		return weatherhistoryDAO.selectWeatherhistoryByList();
		
	}
	
	public int addWeatherInput(Weatherhistory weatherhistory) {
		
		return weatherhistoryDAO.insertWeatherInput(weatherhistory);
		
	}

}
