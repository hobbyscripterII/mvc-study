package com.mvc.study.web.domain;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InsertResult {
	@Min(value = 3, message = "환자번호를 선택해주세요.")
	private int p_no;
	@Size(min = 4, message = "검사코드를 선택해주세요.")
	private String t_code;
	@NotNull(message = "검사 시작 일자를 선택해주세요.")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date t_sdate;
	@NotNull(message = "검사 상태를 선택해주세요.")
	private String t_status;
	@NotNull(message = "검사 종료 일자를 선택해주세요.")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date t_ldate;
	@NotNull(message = "검사 상태를 선택해주세요.")
	private String t_result;
}