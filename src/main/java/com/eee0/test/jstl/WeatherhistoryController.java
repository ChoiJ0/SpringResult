package com.eee0.test.jstl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eee0.test.jstl.bo.WeatherhistoryBO;
import com.eee0.test.jstl.model.Weatherhistory;

@RequestMapping("/jstl/weather")
@Controller
public class WeatherhistoryController {

	@Autowired WeatherhistoryBO weatherhistoryBO; 
	
	@GetMapping("/weatherPage")
	public String weatherhistoryByList(){
			
		List<Weatherhistory> weather = weatherhistoryBO.weatherhistoryByList();
		
		return "/jstl/weather/weatherPage";
	} 
	
}
