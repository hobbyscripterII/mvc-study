package com.mvc.study.domain.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Result {
	private int p_no;
	private String t_code;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date t_sdate;
	private String t_status;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date t_ldate;
	private String t_result;
}