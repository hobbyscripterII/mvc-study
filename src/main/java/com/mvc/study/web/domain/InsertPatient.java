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
	@Min(value = 4, message = "ȯ�ڹ�ȣ�� �Է����ּ���.")
	private int p_no;
	@NotEmpty(message = "ȯ�� �̸��� �Է����ּ���.")
	private String p_name;
	@Size(min = 8, message = "������� 8�ڸ��� �Է����ּ���.")
	private String p_birth;
	@NotNull(message = "������ �������ּ���.")
	private String p_gender;
	private String p_tel1;
	@Pattern(regexp = "\\d{4}", message = "�ι�° �ڸ��� 4�ڸ��� �Է����ּ���.")
	private String p_tel2;
	@Pattern(regexp = "\\d{4}", message = "����° �ڸ��� 4�ڸ��� �Է����ּ���.")
	private String p_tel3;
	@Min(value = 2, message = "������ �������ּ���.")
	private int p_city;
}