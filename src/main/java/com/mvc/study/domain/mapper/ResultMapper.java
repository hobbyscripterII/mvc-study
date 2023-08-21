package com.mvc.study.domain.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mvc.study.domain.domain.Result;
import com.mvc.study.web.domain.ResultListForm;

@Mapper
public interface ResultMapper {
	void insertResult(Result result);
	List<ResultListForm> selectResultAll();
}