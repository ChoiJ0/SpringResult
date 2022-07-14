package com.eee0.test.realtor.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eee0.test.realtor.dao.RealtorDAO;
import com.eee0.test.realtor.model.Realtor;

@Service
public class RealtorBO {

	@Autowired RealtorDAO realtorDAO;
	
	public int addRealtor(Realtor realtor) {
		return realtorDAO.insertRealor(realtor);
	}
	
}
