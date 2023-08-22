package com.mvc.study;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;

import com.mvc.study.domain.domain.Member;
import com.mvc.study.domain.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class TestInit {
	private final MemberRepository memberRepository;
	
	@PostConstruct
	public void init() {
		memberRepository.saveMember(new Member("test", "ªﬂæ‡¿Ã", "test!"));
	}
}