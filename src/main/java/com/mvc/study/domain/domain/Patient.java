package com.mvc.study.domain.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Patient {
	private long pno; // 환자 번호
	private String tcode; // 검사명
	private int tsdate; // 검사 시작일자
	private int tldate; // 검사 완료일자
	private char tstatus; // 검사 상태
	private char tresult; // 검사 결과
}