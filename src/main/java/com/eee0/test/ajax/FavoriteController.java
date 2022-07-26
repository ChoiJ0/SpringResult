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

import com.eee0.test.ajax.bo.FavoriteBO;
import com.eee0.test.ajax.model.Favorite;

@Controller
@RequestMapping("/ajax")
public class FavoriteController {
	
	@Autowired FavoriteBO favoriteBO; 
	
	@GetMapping("list")
	public String favoriteList(Model model) {
		
		List<Favorite> userList = favoriteBO.getFavoriteList();
		
		model.addAttribute("userList", userList);
		
		return "/ajax/favoriteList";
	}
	
	@GetMapping("/input")
	public String favoriteInput() {
		
		return "/ajax/favoriteInput";
	}
	
	
	@PostMapping("insert")
	@ResponseBody
	public Map<String, String> favoriteInsert(@ModelAttribute Favorite favorite) {
		
		int count = favoriteBO.addFavoriteInsert(favorite);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
			
		return result;
		
	}
	
	@GetMapping("is_duplicate")
	@ResponseBody
	public Map<String, Boolean> isDuplicate(@RequestParam("url") String url){
		
		Map<String, Boolean> result = new HashMap<>();
		
		result.put("is_duplicate", favoriteBO.isDuplicateName(url));
		
		return result;
	}
	
	@PostMapping("delete")
	@ResponseBody
	public Map<String, String> favoriteDelete(@RequestParam("id") int id) {
		
		int count = favoriteBO.favoriteDelete(id);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
			
		return result;
	}
	
	
}
