package com.mvc.study.domain.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Patient {
	private long pno; // ȯ�� ��ȣ
	private String tcode; // �˻��
	private int tsdate; // �˻� ��������
	private int tldate; // �˻� �Ϸ�����
	private char tstatus; // �˻� ����
	private char tresult; // �˻� ���
}