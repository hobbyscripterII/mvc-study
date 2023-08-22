package com.mvc.study.domain.mapper;

import java.util.List;

import com.mvc.study.domain.domain.Patient;
import com.mvc.study.web.domain.PatientListForm;

public interface PatientMapper {
	void insertPatient(Patient patient);
	List<PatientListForm> selectAllPatient();
	List<PatientListForm> selectCityTestCnt();
	int selectPMaxNo();
	List<Patient> selectPNo();
	List<PatientListForm> selectCityTest();
}