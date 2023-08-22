package com.mvc.study.domain.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Result {
	private int p_no;
	private String t_code;
	private Date t_sdate;
	private String t_status;
	private Date t_ldate;
	private String t_result;
}