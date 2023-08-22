package com.mvc.study.domain.service;

import org.springframework.stereotype.Service;

import com.mvc.study.domain.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	private final MemberRepository memberRepository;
}
