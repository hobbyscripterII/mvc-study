package com.mvc.study.domain.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Patient {
	private int p_no;
	private String p_name;
	private String p_birth;
	private String p_gender;
	private String p_phone; // p_tel1 + p_tel2 + p_tel3
	private int p_tel1;
	private int p_tel2;
	private int p_tel3;
	private int p_city;
	
	private int p_cityCnt;
	private String p_cityName;
}
