package com.mvc.study.domain.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mvc.study.domain.domain.Patient;
import com.mvc.study.domain.service.PatientService;
import com.mvc.study.web.domain.InsertPatient;
import com.mvc.study.web.domain.PatientListForm;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class PatientController {
	private final PatientService patientService;
	
	@GetMapping("/p-insert")
	public String insertPatient(Model model) {
		int p_maxNo = patientService.SelectPmaxNo();
		List<PatientListForm> p_city = patientService.selectCityTest();
		model.addAttribute("pmaxno", p_maxNo);
		model.addAttribute("p_city", p_city);
		model.addAttribute("insertPatient", new InsertPatient());
		return "pinsert";
	}
	
	@PostMapping("/p-result")
	public String insertForm(@Validated @ModelAttribute InsertPatient insertPatient, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			log.info("bindingResult = {}", bindingResult);
			return "pinsert";
		} else {
			Patient patient = new Patient();
			patient.setP_no(insertPatient.getP_no());
			patient.setP_name(insertPatient.getP_name());
			patient.setP_birth(insertPatient.getP_birth());
			patient.setP_gender(insertPatient.getP_gender());
			patient.setP_tel1(insertPatient.getP_tel1());
			patient.setP_tel2(insertPatient.getP_tel2());
			patient.setP_tel3(insertPatient.getP_tel3());
			patient.setP_city(insertPatient.getP_city());
			patientService.insertPatient(patient);
			return "redirect:/p-list";
		}
	}
	
	@GetMapping("/p-list")
	public String patientList(Model model) {
		List<PatientListForm> patient = patientService.selectAllPatient();
		model.addAttribute("patient", patient);
		return "plist";
	}
	

	@GetMapping("/ct-cnt")
	public String cityTestCnt(Model model) {
		List<PatientListForm> cnt = patientService.selectCityTestCnt();
		model.addAttribute("cnt", cnt);
		return "city";
	}
}