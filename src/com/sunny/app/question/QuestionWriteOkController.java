package com.sunny.app.question;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunny.app.Execute;
import com.sunny.app.question.dao.QuestionDAO;
import com.sunny.app.question.dto.QuestionDTO;
import com.sunny.app.question.file.dao.QuestionFileDAO;
import com.sunny.app.question.file.dto.QuestionFileDTO;

public class QuestionWriteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		QuestionDAO questionDAO = new QuestionDAO();
		QuestionDTO questionDTO = new QuestionDTO();
		QuestionFileDAO questionFileDAO = new QuestionFileDAO();
		QuestionFileDTO questionFileDTO = new QuestionFileDTO();
		int questionNumber = 0;
		
		System.out.println("writeOk컨트롤러 들어왔다");
		System.out.println(req.getParameter("questionTitle"));
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 100; 
		
		System.out.println(uploadPath);
	      
	      questionDTO.setQuestionContent("questionContent");
	      questionDTO.setUserNumber((Integer)req.getSession().getAttribute("userNumber"));
	      int gosuNumber2 = Integer.parseInt(req.getParameter("gosuNumber"));
	      int gosuNumber = 1;

	      questionDAO.insert(questionDTO);
	      questionNumber = questionDAO.getSequence();
	      
	      System.out.println(questionNumber);

	      }
	}
