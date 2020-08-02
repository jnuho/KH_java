package com.mybatis.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.service.MybatisService;
import com.mybatis.model.service.MybatisServiceImpl;

/**
 * Servlet implementation class ParamTestServlet
 */
@WebServlet("/paramMybatis")
public class ParamTestServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
  private MybatisService service = new MybatisServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParamTestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int no = Integer.parseInt(request.getParameter("no"));
    int result = service.insertStudent2(no);

    String msg = result >0? "입력성공":"입력실패";

    response.setContentType("text/html;charset=UTF-8");
    response.getWriter().print(msg);
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    doGet(request, response);
  }

}
