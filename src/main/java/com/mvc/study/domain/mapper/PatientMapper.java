package com.mvc.study.domain.mapper;

import java.util.List;

import com.mvc.study.domain.domain.Patient;

public interface PatientMapper {
	void insertPatient(Patient patient);
	List<Patient> selectAllPatient();
	List<Patient> selectCityTestCnt();
	int selectPMaxNo();
	List<Patient> selectPNo();
}