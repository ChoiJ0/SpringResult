package com.eee0.test.database.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eee0.test.database.dao.StoreDAO;
import com.eee0.test.database.model.Store;

@Service
public class StoreBO {
	
	@Autowired StoreDAO storeDAO;
	
	public List<Store> getStoreList() {
		
		List<Store> list = storeDAO.selectStoreList();
		
		return list;
	}
	
}
