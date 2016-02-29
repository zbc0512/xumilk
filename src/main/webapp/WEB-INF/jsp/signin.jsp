<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jsp/js.jsp" %>
<title>Sign in</title>
</head>
<body>
  <%@ include file="/WEB-INF/jsp/nav.jsp" %>
  <section class="content-wrap">
    <div class="container" align="center">
      <div class="row">
        <h3>登录！</h3>
        <form action="/user.do?method=signin" method="post">
          账号：<input type="text" name="userName" id="userName" /><br>
          密码：<input type="password" name="userPasswd" id="userPasswd" /><br>
          <input type="submit" value="登录" />
        </form>
      </div>
    </div>
  </section>
  <%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>