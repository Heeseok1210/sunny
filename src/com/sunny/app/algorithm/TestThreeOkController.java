package com.sunny.app.algorithm;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sunny.app.Execute;
import com.sunny.app.algorithm.dao.AlgorithmDAO;
import com.sunny.app.algorithm.dto.AlgorithmDTO;

public class TestThreeOkController implements Execute{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		AlgorithmDTO algorithmDTO = new AlgorithmDTO();
		AlgorithmDAO algorithmDAO = new AlgorithmDAO();
		HttpSession session = req.getSession();
		List<AlgorithmDTO> result = algorithmDAO.algorithmResult(algorithmDTO);

		//request.getParameter로 selectTwo의 값 얻어오기
		algorithmDTO.setSelectThree(req.getParameter("selectTwo"));
		
		
		System.out.println(req.getParameter("selectTwo"));
		
		
		//selectOne String타입으로 저장
		String selectTwo = req.getParameter("selectTwo");


		// 처리 결과 selectOne 값을 session에 저장합니다.
		session.setAttribute("selectTwo", selectTwo);
		

        // testThree.jsp로 selectTwo 값을 전달합니다.
        req.getRequestDispatcher("/app/algorithm/testThree.jsp").forward(req, resp);

    }
}