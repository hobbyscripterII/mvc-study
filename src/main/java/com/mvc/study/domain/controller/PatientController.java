package com.mvc.study.domain.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mvc.study.domain.domain.Patient;
import com.mvc.study.domain.service.PatientService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class PatientController {
	private final PatientService patientService;
	
	@GetMapping("/p-list")
	public String patientList(Model model) {
		List<Patient> patient = patientService.selectAllPatient();
		model.addAttribute("patient", patient);
		return "plist";
	}
	

	@GetMapping("/ct-cnt")
	public String cityTestCnt(Model model) {
		List<Patient> cnt = patientService.selectCityTestCnt();
		model.addAttribute("cnt", cnt);
		return "city";
	}
}