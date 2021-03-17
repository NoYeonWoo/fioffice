package com.kh.spring.reservation.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {
	
	@RequestMapping("enrollForm.r")
	public String authorityView() {
		return "reservation/reservationInsertForm";
	}
}
