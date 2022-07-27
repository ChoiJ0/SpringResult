package com.eee0.test.ajax.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.eee0.test.ajax.model.Booking;

@Repository
public interface ReservationDAO {

	public List<Booking> selectReservation();

	public int deleteReservation(@Param("id") int id);

	public int insertReservation(Booking booking);
	
}
