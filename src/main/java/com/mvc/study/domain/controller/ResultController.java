package com.mvc.study.domain.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mvc.study.domain.domain.Result;
import com.mvc.study.domain.service.ResultService;
import com.mvc.study.web.domain.ResultListForm;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class ResultController {
	private final ResultService resultService;
	
	@GetMapping("/insert")
	public String resultInsert(Model model) {
		model.addAttribute("patient", new Result());
		return "insert";
	}
	
	@PostMapping("/result")
	public String insertForm(@ModelAttribute Result result) {
		log.info("patient = {}", result);
		resultService.insertResult(result);
		return "redirect:/r-list";
	}
	
	@GetMapping("r-list")
	public String resultList(Model model) {
		List<ResultListForm> result = resultService.selectResultAll();
		model.addAttribute("result", result);
		return "rlist";
	}
}