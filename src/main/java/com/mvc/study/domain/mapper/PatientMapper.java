package com.mvc.study.domain.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mvc.study.domain.domain.Patient;

@Mapper
public interface PatientMapper {
	List<Patient> selectAllPatient();
	List<Patient> selectCityTestCnt();
}