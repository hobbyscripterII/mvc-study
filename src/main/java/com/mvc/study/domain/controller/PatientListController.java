package com.mvc.study.domain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PatientListController {
	@GetMapping("/plist")
	public String patientList() {
		return "plist";
	}
}