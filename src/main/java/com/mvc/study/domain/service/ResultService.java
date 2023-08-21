package com.mvc.study.domain.service;

import java.util.List;

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
	private final ResultMapper resultMapper;

	public void insertResult(Result result) {
		resultMapper.insertResult(result);
	}
	
	public List<ResultListForm> selectResultAll() {
		log.info("result = {}", resultMapper.selectResultAll());
		return resultMapper.selectResultAll();
	}
}