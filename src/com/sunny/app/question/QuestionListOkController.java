package com.sunny.app.question;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunny.app.Execute;
import com.sunny.app.gosu.dao.GosuDAO;
import com.sunny.app.gosu.vo.GosuVO;
import com.sunny.app.question.dao.QuestionDAO;
import com.sunny.app.question.dto.QuestionDTO;
import com.sunny.app.question.vo.QuestionVO;

public class QuestionListOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("- list입니다 - ");

		QuestionDAO questionDAO = new QuestionDAO();
		GosuDAO gosuDAO = new GosuDAO();


		int total = questionDAO.getTotal();
		String temp = req.getParameter("page");

		int page = temp == null ? 1 : Integer.valueOf(temp);

//	      한 페이지에 몇 개의 게시물? 10개
		int rowCount = 3;
//	      페이지 버튼 세트는? 5개씩
		int pageCount = 3;

		int startRow = (page - 1) * rowCount;

		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);

		int startPage = endPage - (pageCount - 1);

		int realEndPage = (int) Math.ceil(total / (double) rowCount);

		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean prev = startPage > 1;
		boolean next = endPage != realEndPage;

		Map<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		pageMap.put("gosuNumber", Integer.parseInt(req.getParameter("gosuNumber")));

		List<QuestionDTO> questions = questionDAO.selectAll(pageMap);
		List<GosuVO> gosus = gosuDAO.selectAll(pageMap);

		int gosuNumber2 = Integer.parseInt(req.getParameter("gosuNumber"));

		req.setAttribute("questionNumber", gosus);
		req.setAttribute("gosuNickName", questionDAO.getNickName(gosuNumber2));

		req.setAttribute("gosus", gosus);
		req.setAttribute("questionList", questions);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);

		req.getRequestDispatcher("/app/question/questionList.jsp").forward(req, resp);
	}

}