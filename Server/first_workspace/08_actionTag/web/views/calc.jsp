<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
%>   

<%
  int su1=Integer.parseInt(request.getParameter("su1"));
  int su2=Integer.parseInt(request.getParameter("su2"));
  int result=0;
  for(int i=su1;i<=su2;i++){
    result+=i;
  }
  request.setAttribute("result",result);
%>

<!-- 페이지 전환 forward  -->
<%-- <jsp:forward page="resultView.jsp/"> --%>

<!-- 페이지 전환 forward시 파라미터 값 전송 가능! -->
<jsp:forward page="resultView.jsp">
  <jsp:param name="that" value="가니?"/>
</jsp:forward>





