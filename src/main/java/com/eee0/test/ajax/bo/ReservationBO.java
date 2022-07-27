package com.eee0.test.ajax.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eee0.test.ajax.dao.ReservationDAO;
import com.eee0.test.ajax.model.Booking;

@Service
public class ReservationBO {
	
	@Autowired ReservationDAO reservationDAO;
	
	public List<Booking> getReservationList() {
		
		return reservationDAO.selectReservation();
	}

	public int reservaionDel(int id) {
		
		return reservationDAO.deleteReservation(id);
	}

	public int reservationInsert(Booking booking) {
		
		return reservationDAO.insertReservation(booking);
	}

}
