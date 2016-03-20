<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jsp/common/js.jsp"%>
<title>Sign in</title>
</head>
<body>
  <%@ include file="/WEB-INF/jsp/common/nav.jsp"%>
  <section class="content-wrap">
    <div class="container" align="center">
      <div class="row">
        <form action="${pageContext.request.contextPath}/login" method="post" style="width: 20%">
          <div class="form-group">
            <div style="text-align: left">
              <label for="userName">用户名：</label>
            </div>
            <input type="text" class="form-control" id="userName" name="userName" placeholder="用户名/邮箱/手机号">
          </div>
          <div class="form-group">
            <div style="text-align: left">
              <label for="userPasswd">密码：</label>
            </div>
            <input type="password" class="form-control" id="userPasswd" name="userPasswd" placeholder="密码">
          </div>
          <button type="submit" class="btn btn-default">登录</button>
        </form>
      </div>
    </div>
  </section>
  <%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
</body>
</html>