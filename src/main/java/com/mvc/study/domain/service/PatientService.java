package com.mvc.study.domain.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.study.domain.domain.Patient;
import com.mvc.study.domain.mapper.PatientMapper;
import com.mvc.study.web.domain.PatientListForm;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PatientService {
	private final PatientMapper patientMapper;
	
	public void insertPatient(Patient patient) {
		patientMapper.insertPatient(patient);
	}
	
	public List<PatientListForm> selectAllPatient() {
		return patientMapper.selectAllPatient();
	}
	
	public List<PatientListForm> selectCityTestCnt() {
		return patientMapper.selectCityTestCnt();
	}
	
	public int SelectPmaxNo() {
		return patientMapper.selectPMaxNo();
	}
	
	public List<Patient> selectPNo() {
		return patientMapper.selectPNo();
	}
	
	public List<PatientListForm> selectCityTest() {
		return patientMapper.selectCityTest();
	}
}