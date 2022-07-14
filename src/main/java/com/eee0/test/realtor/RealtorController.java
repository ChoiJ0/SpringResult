package com.eee0.test.realtor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eee0.test.realtor.bo.RealtorBO;
import com.eee0.test.realtor.model.Realtor;

@Controller
@RequestMapping("/jsp/realtor")
public class RealtorController {
	
	@Autowired RealtorBO realtorBO;
	
	@GetMapping("/insert")
	public String addRealtor(@ModelAttribute Realtor realtor
			, Model model) {
		
		int count = realtorBO.addRealtor(realtor);
		model.addAttribute("realtor", realtor);
		
		
		return "jsp/realtorInfo";
	}
	
	@GetMapping("/input")
	public String realtorInput() {
		return "jsp/realtorInput";
	}
	
}
