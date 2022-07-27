package com.eee0.test.ajax;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eee0.test.ajax.bo.ReservationBO;
import com.eee0.test.ajax.model.Booking;

@Controller
@RequestMapping("/ajax/reservation")
public class ReservationController {
	
	@Autowired ReservationBO reservationBO;
	
	@GetMapping("/main")
	public String reservationMain() {
		
		return "/ajax/reservation/reservationMain";
	}
	
	@GetMapping("/list")
	public String reservationList(Model model) {
		
		List<Booking> list = reservationBO.getReservationList();
		
		model.addAttribute("list", list);
		
		return "/ajax/reservation/reservationList";
	}
	
	@PostMapping("/delete")
	@ResponseBody
	public Map<String, String> reservationDel(@RequestParam("id") int id) {
		
		int count = reservationBO.reservaionDel(id);
		
		Map<String, String> result = new HashMap<>(); 
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	
	@GetMapping("/input")
	public String reservationInput() {
		
		return "/ajax/reservation/reservationInput";
	}
	
	@PostMapping("/insert")
	@ResponseBody
	public Map<String, String> reservationInsert(@ModelAttribute Booking booking) {
		
		int count = reservationBO.reservationInsert(booking);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	
	
	
}
