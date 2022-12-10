package com.devsibong1.app;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devsibong1.dto.TodoDTO;
import com.devsibong1.service.TodoService;

@WebServlet(name="listController", urlPatterns="/todo/list")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<TodoDTO> dtoList = TodoService.INSTANCE.getList();
		request.setAttribute("list", dtoList);
		request.getRequestDispatcher("/WEB-INF/todo/list.jsp").forward(request, response);
	}
}
