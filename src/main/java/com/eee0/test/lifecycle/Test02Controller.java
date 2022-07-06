package com.eee0.test.lifecycle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test02Controller {
	
	@RequestMapping("/lifecycle/ex02/1")
	public String view() {
		return "lifecycle/ex02";
	}
	
}
