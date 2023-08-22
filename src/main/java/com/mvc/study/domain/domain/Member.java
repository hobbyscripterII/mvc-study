package com.mvc.study.domain.domain;

import javax.validation.constraints.NotEmpty;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Member {
	private int seq;
	@NotEmpty(message = "아이디를 입력해주세요.")
	private String id;
	@NotEmpty(message = "이름을 입력해주세요.")
	private String name;
	@NotEmpty(message = "패스워드를 입력해주세요.")
	private String pwd;

	public Member(String id, String name, String pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
}