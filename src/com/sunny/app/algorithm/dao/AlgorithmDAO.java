package com.sunny.app.algorithm.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sunny.app.algorithm.dto.AlgorithmDTO;

import java.util.List;

public class AlgorithmDAO {
	private SqlSession sqlSession;

	public AlgorithmDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<AlgorithmDTO> algorithmResult(AlgorithmDTO algorithmDTO) {
		System.out.println("algorithmResult 탐");
		return sqlSession.selectList("algorithm.algorithmResult", algorithmDTO);
	}

	public List<AlgorithmDTO> selectPlant(AlgorithmDTO algorithmDTO) {
		return sqlSession.selectList("algorithm.selectPlant", algorithmDTO);
	}

}