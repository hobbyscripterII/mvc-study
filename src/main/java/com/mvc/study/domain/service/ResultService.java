package com.mvc.study.domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.study.domain.domain.Result;
import com.mvc.study.domain.mapper.ResultMapper;
import com.mvc.study.web.domain.ResultListForm;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class ResultService {
	@Autowired	ResultMapper resultMapper;
	
	private final static ResultService instance = new ResultService();
	public ResultService getInstance() {return instance;}

	public void insertResult(Result result) {
		resultMapper.insertResult(result);
	}
	
	public List<ResultListForm> selectResultAll() {
		log.info("result = {}", resultMapper.selectResultAll());
		return resultMapper.selectResultAll();
	}
}