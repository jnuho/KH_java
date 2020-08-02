<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.kh.notice.model.vo.Notice" %>

<%
  Notice n = (Notice)request.getAttribute("notice");
%>

<%@ include file="/views/common/header.jsp" %>

  <style>
    section#notice-container{width:600px; margin:0 auto; text-align:center;}
    section#notice-container h2{margin:10px 0;}
    table#tbl-notice{width:500px; margin:0 auto; border:1px solid black; border-collapse:collapse; clear:both; }
    table#tbl-notice th {width: 125px; border:1px solid; padding: 5px 0; text-align:center;} 
    table#tbl-notice td {border:1px solid; padding: 5px 0 5px 10px; text-align:left;}
  </style>

  <section id ="notice-container">
    <h2>공 지 사 항</h2>
    <table id="tbl-notice">
      <tr>
        <th>제목</th>
        <td><%=n.getNoticeTitle() %></td>
      </tr>
      <tr>
        <th>작성자</th>
        <td><%=n.getNoticeWriter() %></td>
      </tr>
      <tr>
        <th>내용</th>
        <td><%=n.getNoticeContent() %></td>
      </tr>
      <tr>
        <th>작성일</th>
        <td><%=n.getNoticeDate() %></td>
      </tr>
      <tr>
        <th>첨부파일</th>
        <td>
          <% if(n.getFilePath() != null){ %>
            <!-- click to Download! -->
            <!-- <a href="<%=request.getContextPath()%>/notice/noticeFileDown?fileName=<%=n.getFilePath()%>" > -->

            <!-- encoding 처리해서 보낼수 있음 -->
            <!-- a태그에 옵션이 걸리면 실행 -->
              <a href="javascript:fn_filedown('<%=n.getFilePath()%>')">
                <img src="<%=request.getContextPath()%>/images/file.png" alt="" width='16px'>
              </a>
            <!-- </a> -->
            <script>
              function fn_filedown(filename){
                //미리 한글로 바꿀 수 있음
                var file=encodeURIComponent(filename);
                location.href="<%=request.getContextPath()%>/notice/noticeFileDown?fileName="+ file;
              }
            </script>
          <% } %>
        </td>
      </tr>
      <tr>
        <td colspan='2' style="text-align: center;">
          <input type="button" value="수정하기" onclick="" />
          <input type="button" value="삭제하기" onclick="" />
        </td>
      </tr>

    </table>
  </section>

  <script>
    function updateNotice(){
      var url = "";
      var status="";
    }
  </script>
  
<%@ include file="/views/common/footer.jsp" %>