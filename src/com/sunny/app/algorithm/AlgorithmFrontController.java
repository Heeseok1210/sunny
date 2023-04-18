package com.sunny.app.algorithm;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AlgorithmFrontController extends HttpServlet {

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
		System.out.println(target);
		switch (target) {
		case "/algorithm/index.ag":
			req.getRequestDispatcher("/app/algorithm/index.jsp").forward(req, resp);
			break;
		case "/algorithm/testOne.ag":
			new TestOneOkController().execute(req, resp);
		    break;
		case "/algorithm/testTwo.ag":
			new TestTwoOkController().execute(req, resp);
			break;
		case "/algorithm/testThree.ag":
			new TestThreeOkController().execute(req, resp);
			break;
		case "/algorithm/testFour.ag":
			 new TestFourOkController().execute(req, resp);
			break;
		case "/algorithm/testFive.ag":
			new TestFiveOkController().execute(req, resp);
			break;
		case "/algorithm/loading.ag":
			new LoadingOkController().execute(req,resp);
			break;
		case "/algorithm/result.ag":
			new ResultOkController().execute(req, resp);
			break;
		}
	} 
}