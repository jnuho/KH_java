<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}" />

  <section id="content">
    <div id="insertFrm">
      <div class="form-inline">
        <label for="id" class="col-md-3">Emp ID</label>
        <input type="number" class="form-control" id="id" name="id" min="1" max="999" step="1" required />
      </div>

      <div class="form-inline">
        <label for="name" class="col-md-3">Name</label>
        <input type="text" class="form-control" id="name" name="name" required />
      </div>

      <div class="form-inline">
        <label for="no" class="col-md-3">NO('-')</label>
        <input type="text" class="form-control" id="no" name="no" placeholder="yymmdd-xxxxxx" required />
      </div>

      <div class="form-inline">
        <label for="email" class="col-md-3">Email</label>
        <input type="text" class="form-control" id="email"  name="email" placeholder="example@mail.com" required />
      </div>

      <div class="form-inline">
        <label for="phone" class="col-md-3">Phone</label>
        <input type="text" class="form-control" id="phone" name="phone" placeholder="010-xxxx-xxxx" required />
      </div>

      <div class="form-inline">
        <label for="deptCode" class="col-md-3">Dept Code</label>
        <select name="deptCode" id="deptCode" class="form-control" required >
          <option value="D1">D1</option>
          <option value="D2">D2</option>
          <option value="D3">D3</option>
          <option value="D4">D4</option>
          <option value="D5">D5</option>
          <option value="D6">D6</option>
          <option value="D7">D7</option>
          <option value="D8">D8</option>
          <option value="D9">D9</option>
        </select>
      </div>

      <div class="form-inline">
        <label for="jobCode" class="col-md-3">Job Code</label>
        <select name="jobCode" id="jobCode" class="form-control" required>
          <option value="Choose Job Code" disabled selected >J1</option>
          <option value="J1">J1</option>
          <option value="J2">J2</option>
          <option value="J3">J3</option>
          <option value="J4">J4</option>
          <option value="J5">J5</option>
          <option value="J6">J6</option>
          <option value="J7">J7</option>
        </select>
      </div>

      <div class="form-inline">
        <label for="sal" class="col-md-3">Salary</label>
        <input type="number" class="form-control" id="sal" name="sal" placeholder="" required />
      </div>

      <div class="form-inline">
        <label for="bonus" class="col-md-3">bonus(%)</label>
        <input type="number" class="form-control" id="bonus" name="bonus" step=.01 placeholder="%" />
      </div>

      <div class="form-inline">
        <label for="mgrId" class="col-md-3">MGR ID</label>
        <input type="number" class="form-control" id="mgrId" name="mgrId" />
      </div>

      <div class="form-inline justify-content-center my-2">
        <button id="insertBtn" class="btn btn-sm btn-info">회원추가</button>
      </div>
      <script>
        $(function(){
          $('#insertBtn').click(function(){
            console.log($('#id').val());
            console.log($('#name').val());
            console.log($('#no').val());
            console.log($('#email').val());
            console.log($('#phone').val());
            console.log($('#deptCode').val());
            console.log($('#jobCode').val());
            console.log($('#sal').val());
            console.log($('#bonus').val());
            console.log($('#mgrId').val());
            $.ajax({
              type: "POST",
              url: "${path }/insertEmpEnd.do",
              dataType: "text",
              data: { "id": $('#id').val(),
                      "name": $('#name').val(),
                      "no": $('#no').val(),
                      "email": $('#email').val(),
                      "phone": $('#phone').val(),
                      "deptCode": $('#deptCode').val(),
                      "jobCode": $('#jobCode').val(),
                      "sal": $('#sal').val(),
                      "bonus": $('#bonus').val(),
                      "mgrId": $('#mgrId').val() },
              success: function(data){
                alert(data);
                insertToggled = !insertToggled;
                $('#insertArea').html("");
              },
              error: function(request, status, error){
                alert("insertEmpEnd.do ajax ERROR!");
              }


            });
          })
        });
      </script>
    </div>

  </section>