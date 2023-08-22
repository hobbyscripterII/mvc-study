package com.mvc.study.web.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResultListForm {
	private int p_no;
	private String t_code;
	private Date t_sdate;
	private String t_status;
	private Date t_ldate;
	private String t_result;
	
	private String p_name;
	private String t_name;
}