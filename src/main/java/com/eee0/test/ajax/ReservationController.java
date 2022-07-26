package com.eee0.test.ajax;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ajax/reservation")
public class ReservationController {

	@GetMapping("/list")
	public String reservation() {
		
		return "/ajax/reservationList";
	}
	
	
	
}
