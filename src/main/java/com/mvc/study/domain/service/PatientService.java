package com.mvc.study.domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.study.domain.domain.Patient;
import com.mvc.study.domain.mapper.PatientMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class PatientService {
	@Autowired PatientMapper patientMapper;
	
	private final static PatientService instance = new PatientService();
	public PatientService getInstance() {return instance;}
	
	public List<Patient> selectAllPatient() {
		log.info("patient = {}", patientMapper.selectAllPatient());
		return patientMapper.selectAllPatient();
	}
	
	public List<Patient> selectCityTestCnt() {
		log.info("cityTestCnt = {}", patientMapper.selectCityTestCnt());
		return patientMapper.selectCityTestCnt();
	}
}