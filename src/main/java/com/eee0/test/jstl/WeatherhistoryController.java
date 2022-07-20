package com.eee0.test.jstl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eee0.test.jstl.bo.WeatherhistoryBO;
import com.eee0.test.jstl.model.Weatherhistory;

@RequestMapping("/jstl/weather")
@Controller
public class WeatherhistoryController {

	@Autowired WeatherhistoryBO weatherhistoryBO; 
	
	@GetMapping("/weatherPage")
	public String weatherhistoryByList(Model model){
			
		List<Weatherhistory> weather = weatherhistoryBO.getWeatherhistoryByList();
		
		model.addAttribute("weather", weather);
		
		return "/jstl/weather/weatherPage";
	}
	
	@GetMapping("/weatherInput")
	public String weatherhistoryByInput() {
		
		return "/jstl/weather/weatherInput";
		
	}
	
	@PostMapping("/weather_input")
	public String weatherInput(
			@ModelAttribute Weatherhistory weatherhistory) {
		
		 weatherhistoryBO.addWeatherInput(weatherhistory);
		
		return "/jstl/weather/weatherPage";
		
	}
	
}
