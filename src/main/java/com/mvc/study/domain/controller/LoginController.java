package com.mvc.study.domain.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mvc.study.domain.domain.Member;

@Controller
public class LoginController {
	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("member", new Member());
		return "login";
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute Member member, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return "login";
		} else {
			model.addAttribute("id", member.getId());
			return "index";
		}
	}
}
