package weibo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import weibo.service.NewsService;
import weibo.service.impl.NewsServiceImpl;
import weibo4j.org.json.JSONArray;

public class SportController extends HttpServlet {
	private static final long serialVersionUID = 468338666707315156L;
	private NewsService newsService = new NewsServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		JSONArray jsons = newsService.obtainCurrentSports();
		System.out.println("jsons : " + jsons.toString());
		
		if (jsons != null)
			req.setAttribute("jsonArray", jsons);
		RequestDispatcher rd = req.getRequestDispatcher("/sports/sport.jsp");

		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
