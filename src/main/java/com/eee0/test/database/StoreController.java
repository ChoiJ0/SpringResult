package com.eee0.test.database;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eee0.test.database.bo.StoreBO;
import com.eee0.test.database.model.Store;

@Controller
public class StoreController {
	
	@Autowired StoreBO storeBO;
	
	@RequestMapping("/database/test02/1")
	@ResponseBody
	public List<Store> test02() {
		
		List<Store> list = storeBO.getStoreList();
		
		return list;
		
	}
	
}
