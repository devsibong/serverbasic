package com.devsibong1.app;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devsibong1.dto.TodoDTO;
import com.devsibong1.service.TodoService;

@WebServlet("/ReadController")
public class ReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// /todo/read?tno=123
		Long tno = Long.parseLong(request.getParameter("tno"));
		
		TodoDTO dto = TodoService.INSTANCE.get(tno);
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("/WEB-INF/todo/read.jsp").forward(request, response);
	}

}
