package com.mvc.study.domain.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Patient {
	private int p_no;
	private String p_name;
	private String p_birth;
	private String p_gender;
	private String p_tel1;
	private String p_tel2;
	private String p_tel3;
	private int p_city;
}