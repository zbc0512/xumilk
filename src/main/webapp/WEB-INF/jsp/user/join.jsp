<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jsp/common/js.jsp"%>
<title>注册</title>
</head>
<body>
  <%@ include file="/WEB-INF/jsp/common/nav.jsp"%>
  <section class="content-wrap">
    <div class="container" align="center">
      <div class="row">
        <span>用户注册</span>
        <form action="${pageContext.request.contextPath}/join" method="post" class="form-horizontal" style="width: 20%">
          <div class="form-group">
            <div style="text-align: left;">
              <label for="userName"><font style="font-weight: normal; color: #F00;">*</font><font style="font-weight: normal; color: #666;">用户名</font></label>
            </div>
            <input type="text" class="form-control" id="userName" name="userName" onblur="checkUserName()"
              placeholder="设置用户名">
          </div>
          <div class="form-group">
            <div style="text-align: left">
              <label for="password"><font style="font-weight: normal; color: #F00;">*</font><font style="font-weight: normal; color: #666;">登录密码</font></label>
            </div>
            <input type="password" class="form-control" id="password" name="password" placeholder="设置你的登录密码">
          </div>
          <div class="form-group">
            <div style="text-align: left">
              <label for="rePassword"><font style="font-weight: normal; color: #F00;">*</font><font style="font-weight: normal; color: #666;">密码确认</font></label>
            </div>
            <input type="password" class="form-control" id="rePassword" name="rePassword" placeholder="请再次输入你的密码">
          </div>
          <button type="submit" class="btn btn-default">注册</button>
        </form>
      </div>
    </div>
  </section>
  <%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
</body>
</html>