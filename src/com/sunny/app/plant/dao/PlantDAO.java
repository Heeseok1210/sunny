package com.sunny.app.plant.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sunny.app.algorithm.dto.AlgorithmDTO;
import com.sunny.app.plant.dto.PlantDTO;

public class PlantDAO {

	private SqlSession sqlSession;

	public PlantDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	  
}
