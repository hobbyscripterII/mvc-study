package com.mvc.study.domain.mapper;

import java.util.List;

import com.mvc.study.domain.domain.Patient;

public interface PatientMapper {
	List<Patient> selectAllPatient();
	List<Patient> selectCityTestCnt();
}