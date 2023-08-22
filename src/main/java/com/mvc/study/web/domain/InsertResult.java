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
	@Min(value = 3, message = "ȯ�ڹ�ȣ�� �������ּ���.")
	private int p_no;
	@Size(min = 4, message = "�˻��ڵ带 �������ּ���.")
	private String t_code;
	@NotNull(message = "�˻� ���� ���ڸ� �������ּ���.")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date t_sdate;
	@NotNull(message = "�˻� ���¸� �������ּ���.")
	private String t_status;
	@NotNull(message = "�˻� ���� ���ڸ� �������ּ���.")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date t_ldate;
	@NotNull(message = "�˻� ���¸� �������ּ���.")
	private String t_result;
}