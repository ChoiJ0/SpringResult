package com.eee0.test.ajax;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ajax/reservation")
public class ReservationController {

	@GetMapping("/main")
	public String reservationMain() {
		
		return "/ajax/reservation/reservationMain";
	}
	
	@GetMapping("/list")
	public String reservationList() {
		
		return "/ajax/reservation/reservationList";
	}
	
	@GetMapping("/input")
	public String reservationInput() {
		
		return "/ajax/reservation/reservationInput";
	}
	
	
}
