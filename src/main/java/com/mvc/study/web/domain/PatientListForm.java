package com.mvc.study.web.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PatientListForm {
	private int p_no;
	private String p_name;
	private String p_birth;
	private String p_gender;
	private String p_tel1;
	private String p_tel2;
	private String p_tel3;
	private int p_city;
	
	private String p_phone;
	private int p_cityCnt;
	private String p_cityName;
	private int p_maxNo;
}