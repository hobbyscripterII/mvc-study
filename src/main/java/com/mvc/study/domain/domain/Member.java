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
	@NotEmpty(message = "���̵� �Է����ּ���.")
	private String id;
	@NotEmpty(message = "�̸��� �Է����ּ���.")
	private String name;
	@NotEmpty(message = "�н����带 �Է����ּ���.")
	private String pwd;

	public Member(String id, String name, String pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
}