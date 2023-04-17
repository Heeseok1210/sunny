package com.sunny.app.question.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunny.app.Execute;
import com.sunny.app.question.reply.dao.QuestionReplyDAO;
import com.sunny.app.question.reply.dto.QuestionReplyDTO;

public class QuestionReplyUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		QuestionReplyDTO questionReplyDTO = new QuestionReplyDTO();
		questionReplyDTO.setReplyNumber(Integer.parseInt(req.getParameter("replyNumber")));
		questionReplyDTO.setReplyContent(req.getParameter("replyContent"));
		
		new QuestionReplyDAO().update(questionReplyDTO);
	}

}
