package weibo.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import weibo.service.NewsService;
import weibo.service.impl.NewsServiceImpl;

public class ShowController extends HttpServlet {
	private static final long serialVersionUID = 228135958107762182L;
	private NewsService newsService = new NewsServiceImpl();

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String headlines = newsService.obtainHeadLine().toString();
		request.setAttribute("headlines", headlines);
	}
}
