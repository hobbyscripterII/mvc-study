package com.mvc.study.domain.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mvc.study.domain.domain.Patient;
import com.mvc.study.domain.domain.Result;
import com.mvc.study.domain.service.PatientService;
import com.mvc.study.domain.service.ResultService;
import com.mvc.study.web.domain.InsertResult;
import com.mvc.study.web.domain.PatientListForm;
import com.mvc.study.web.domain.ResultListForm;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class ResultController {
	private final ResultService resultService;
	private final PatientService patientService;
	
	@GetMapping("/insert")
	public String resultInsert(Model model) {
		List<Patient> pno = patientService.selectPNo();
		model.addAttribute("pno", pno);
		model.addAttribute("insertResult", new InsertResult());
		return "rinsert";
	}
	
	@PostMapping("/r-result")
	public String insertForm(@Valid @ModelAttribute InsertResult insertResult, BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()) {
			List<Patient> pno = patientService.selectPNo();
			model.addAttribute("pno", pno);
			log.info("binfingResult = {}", bindingResult);
			return "rinsert";
		} else {
			Result result = new Result();
			result.setP_no(insertResult.getP_no());
			result.setT_code(insertResult.getT_code());
			result.setT_sdate(insertResult.getT_sdate());
			result.setT_status(insertResult.getT_status());
			result.setT_ldate(insertResult.getT_ldate());
			result.setT_result(insertResult.getT_result());
			resultService.insertResult(result);
			return "redirect:/r-list";
		}
	}
	
	@GetMapping("r-list")
	public String resultList(Model model) {
		List<ResultListForm> result = resultService.selectResultAll();
		model.addAttribute("result", result);
		return "rlist";
	}
}