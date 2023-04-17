package com.sunny.app.question.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuestionReplyFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
	
			switch(target) {
			case "/questionreply/questionreplyListOk.qr":
		         new QuestionReplyListOkController().execute(req, resp);
		         break;
			case "/questionreply/questionreplyWriteOk.qr":
				new QuestionReplyWriteOkController().execute(req, resp);
				break;
			case "/questionReply/questionReplyDeleteOk.qr":
				new QuestionReplyDeleteOkController().execute(req, resp);
				break;
			case "/questionReply/questionReplyUpdateOk.qr":
				new QuestionReplyUpdateOkController().execute(req, resp);
				break;
		}
	}
}
