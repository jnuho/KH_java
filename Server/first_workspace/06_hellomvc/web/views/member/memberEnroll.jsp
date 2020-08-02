<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!-- 해더 풋터불러오기! -->
<%@ include file="/views/common/header.jsp"%>
<section id="enroll-container">
  <h2>회원가입 정보입력</h2>
  <form action="<%=request.getContextPath()%>/memberEnrollEnd" method="post" 
    onsubmit="return enroll_validate();">
    <table>
      <tr>
        <th>아이디</th>
        <td>
          <input type="text" placeholder="4글자이상"
          name="userId" id="userId_" required>
          <input type="button" value="중복검사" onclick="checkIdDuplicate();">
        </td>
      </tr>
      <tr>
        <th>패스워드</th>
        <td>
          <input type="password" name="password"
          id="password_" required>
        </td>
      </tr>
      <tr>
        <th>패스워드확인</th>
        <td>
          <input type="password" id="password_2" required>
        </td>
      </tr>
      <tr>
        <th>이름</th>
        <td>
          <input type="text" id="userName" name="userName"
           required>
        </td>
      </tr>
      <tr>
        <th>나이</th>
        <td>
          <input type="number" name="age" id="age"><br>
        </td>
      </tr>
      <tr>
        <th>이메일</th>
        <td>
          <input type="email" placeholder="abc@xyz.com"
          name="email" id="email"><br/>
        </td>  
      </tr>
      <tr>
        <th>휴대폰</th>
        <td>
          <input type="tel" placeholder="(-없이)01012345678"
          name="phone" id="phone"><br/>
        </td>
      </tr>
      <tr>
        <th>주소</th>
        <td>
          <input type="text" name="address" id="address"><br>        
        </td>
      </tr>
      <tr>
        <th>성별</th>
        <td>
          <input type="radio" name="gender" 
          id="gender0" value="M" checked>
          <label for="gender0">남</label>
          <input type="radio" name="gender" 
          id="gender1" value="F">
          <label for="gender1">여</label>
        </td>
      </tr>
      <tr>
        <th>취미</th>
        <td>
          <input type="checkbox" name="hobby" 
           id="hobby0" value="운동">
          <label for="hobby0">운동</label>
          <input type="checkbox" name="hobby"
           id="hobby1" value="등산">
           <label for="hobby1">등산</label>
          <input type="checkbox" name="hobby"
           id="hobby2" value="독서">
           <label for="hobby2">독서</label>
          <input type="checkbox" name="hobby"
           id="hobby3" value="게임">
           <label for="hobby3">게임</label>
          <input type="checkbox" name="hobby"
           id="hobby4" value="여행">
           <label for="hobby4">여행</label>
        </td>
      </tr>
    </table>
    <input type="submit" value="가입"/>
    <input type="reset" value="취소"/>
  </form>

  <form method="post" name="checkEmailFrm">
    <input type="hidden" name="userId">
  </form>

</section>
<script>
  $(function(){
    $('#password_2').blur(function(){
      var pw=$('#password_').val();
      var pw2=$(this).val();
      if(pw!=pw2){
        alert("패스워드가 일치하지 않습니다.");
        $(this).val("");
        $('#password_').val("").focus();
      }
    });
  });
  function enroll_validate(){
    var userId=$("#userId_");
    if(userId.val().trim().length<4){
      alert("아이디를 4글자 이상 입력하세요.");
      userId.focus();
      return false;
    }
    return true;
  }
  
  //아이디 중복검사
  function checkIdDuplicate(){
    var userId = $('#userId_').val().trim();
    if(!userId || userId.length <4){
      alert("아이디는 4글자 이상 가능합니다.")
      return;
    }

    //---Method1 : form으로 (정보 가릴 수 있음)
    var title = "checkIdDuplicate";
    var status = "left=500px, top=100px, width=300px, height=200px, menubar=n, status=no, scrollbars=yes";
    var popup = open("", title, status); // window.open()
    var url = "<%=request.getContextPath() %>/checkIdDuplicate";
    checkEmailFrm.action = url; //access form
    checkEmailFrm.userId.value = userId;
    checkEmailFrm.target = title;
    checkEmailFrm.submit();

    //---Method2 : parameter로 보냄 ?userId=userId (유저정보 노출 위험)
    // var url = "<%=request.getContextPath() %>/checkIdDuplicate?userId="+userId;
    // var title = "checkIdDuplicate";
    // var status = "left=500px, top=100px width=300px, height=200px, menubar=n, status=no, scrollbars=yes";
    // var popup = open(url,title, status);
  }

</script>

<%@ include file="/views/common/footer.jsp"%>