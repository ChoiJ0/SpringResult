package com.eee0.test.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eee0.test.mybatis.bo.RealEstateBO;
import com.eee0.test.mybatis.model.RealEstate;

@Controller
@RequestMapping("/mybatis")
public class RealEstateController {
	
	@Autowired
	private RealEstateBO realEstateBO;
	
	// realEstate 정보 하나 json으로 response에 출력
	// id 가 5인 real_estate 행 json으로 response에 출력
	@RequestMapping("/test01/1")
	@ResponseBody
	public RealEstate realEstate(@RequestParam("id") int id) {
		RealEstate realEstate = realEstateBO.getRealEstate(id);
		
		return realEstate;
		
	}
	
	// 특정 값 보다 적은 rentPrice 를 가진 매물을 json 으로 response 출력
	
	@RequestMapping("/test01/2")
	@ResponseBody
	public List<RealEstate> realEstateByRentPrice(@RequestParam("rentPrice") int rentPrice) {
		
		List<RealEstate> list = realEstateBO.getRealEstateByRentPrice(rentPrice);
		return list;
	}
	
	// area price 
	@ResponseBody
	@RequestMapping("/test01/3")
	public List<RealEstate> realEstateByAreaPrice(
			@RequestParam("area") int area 
			,@RequestParam("price") int price) {
		
		return realEstateBO.getRealEstateByAreaPrice(area, price);
		
	}
	
	@ResponseBody
	@RequestMapping("/test02/1")
	public String addRealEstateByObject() {
		RealEstate realEstate = new RealEstate();
		
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		int count = realEstateBO.addRealEstateByObject(realEstate);
		
		return "삽입 결과 : " + count;
		
	}
	
	@RequestMapping("/test02/2")
	@ResponseBody
	public String addRealEstate(@RequestParam(value="realtorId", required=true) int realtorId) {
		
		int count = realEstateBO.addRealEstate(realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		return "삽입 결과 : " + count;
	}
	
	@RequestMapping("/test03/1")
	@ResponseBody
	public String updateRealEstate() {
		// id가 23인 행의 type 전세, price 70000
		int count = realEstateBO.updateRealEstate(23, "전세", 70000);
		
		return "수정 결과 : " + count;
	}
	
	@ResponseBody
	@RequestMapping("/test04/1")
	public String deleteRealEstate(@RequestParam("id") int id) {
		// parameter로 전달 받은 id 행 삭제 
		int count = realEstateBO.deleteRealEstate(id);
		
		return "삭제 결과 : " + count;
	}
}