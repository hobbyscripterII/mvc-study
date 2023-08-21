package com.mvc.study.domain.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.study.domain.domain.Patient;
import com.mvc.study.domain.mapper.PatientMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class PatientService {
	private final PatientMapper patientMapper;
	
	public List<Patient> selectAllPatient() {
		log.info("patient = {}", patientMapper.selectAllPatient());
		return patientMapper.selectAllPatient();
	}
	
	public List<Patient> selectCityTestCnt() {
		log.info("cityTestCnt = {}", patientMapper.selectCityTestCnt());
		return patientMapper.selectCityTestCnt();
	}
}