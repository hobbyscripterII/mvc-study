package com.mvc.study.web.domain;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InsertPatient {
	@Min(value = 4, message = "환자번호를 입력해주세요.")
	private int p_no;
	@NotEmpty(message = "환자 이름을 입력해주세요.")
	private String p_name;
	@Size(min = 8, message = "생년월일 8자리를 입력해주세요.")
	private String p_birth;
	@NotNull(message = "성별을 선택해주세요.")
	private String p_gender;
	private String p_tel1;
	@Pattern(regexp = "\\d{4}", message = "두번째 자리는 4자리를 입력해주세요.")
	private String p_tel2;
	@Pattern(regexp = "\\d{4}", message = "세번째 자리는 4자리를 입력해주세요.")
	private String p_tel3;
	@Min(value = 2, message = "지역을 선택해주세요.")
	private int p_city;
}