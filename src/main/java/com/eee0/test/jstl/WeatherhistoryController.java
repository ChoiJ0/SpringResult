package com.eee0.test.jstl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

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
	
	// 날짜, 날씨, 기온, 강수량, 미세먼지, 풍속
	@PostMapping("/weather_input")
//	@ResponseBody
	public RedirectView weatherInput(@ModelAttribute Weatherhistory weatherhistory) {
		
		weatherhistoryBO.addWeatherInput(weatherhistory);
//		 int count = weatherhistoryBO.addWeatherInput(weatherhistory);
//		 return "삽입 결과 : " + count;
		
//		return "redirect:/jstl/weather/weatherPage";
		return new RedirectView("/jstl/weather/weatherPage");
		
	}
	
}
