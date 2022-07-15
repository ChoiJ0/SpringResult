package com.eee0.test.realtor.dao;

import org.springframework.stereotype.Repository;

import com.eee0.test.realtor.model.Realtor;

@Repository
public interface RealtorDAO {

	public int insertRealtor(Realtor realtor);
	
}
