package com.sunny.app.algorithm;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sunny.app.Execute;
import com.sunny.app.algorithm.dao.AlgorithmDAO;
import com.sunny.app.algorithm.dto.AlgorithmDTO;

public class ResultOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AlgorithmDAO algorithmDAO = new AlgorithmDAO();
		AlgorithmDTO algorithmDTO = new AlgorithmDTO();
		HttpSession session = req.getSession();
		
		// 세션에서 각 페이지에서 저장한 값들을 불러옴
		String selectOne = (String) session.getAttribute("selectOne");
		String selectTwo = (String) session.getAttribute("selectTwo");
		String selectThree = (String) session.getAttribute("selectThree");
		String selectFour = (String) session.getAttribute("selectFour");
		String selectFive = (String) session.getAttribute("selectFive");
		String algorithmResult = selectOne + selectTwo + selectThree + selectFour + selectFive;		 
		
		// 선택 값들을 DTO에 저장합니다.
		algorithmDTO.setSelectOne(selectOne);
		algorithmDTO.setSelectTwo(selectTwo);
		algorithmDTO.setSelectThree(selectThree);
		algorithmDTO.setSelectFour(selectFour);
		algorithmDTO.setSelectFive(selectFive);
		
		// 출력
		System.out.println("selectOne: " + selectOne);
		System.out.println("selectTwo: " + selectTwo);
		System.out.println("selectThree: " + selectThree);
		System.out.println("selectFour: " + selectFour);
		System.out.println("selectFive: " + selectFive);
		System.out.println("algorithmResult: " + algorithmResult);
		System.out.println("당신에게 어울리는 식물은" + algorithmResult + "입니다");


        // 결과 페이지로 전달할 데이터를 request에 저장
        req.setAttribute("selectOne", selectOne);
        req.setAttribute("selectTwo", selectTwo);
        req.setAttribute("selectThree", selectThree);
        req.setAttribute("selectFour", selectFour);
        req.setAttribute("selectFive", selectFive);
		
        
        
		// 결과 페이지로 이동
		req.getRequestDispatcher("/app/algorithm/result.jsp").forward(req, resp);
	
	}
	
	
}
		
