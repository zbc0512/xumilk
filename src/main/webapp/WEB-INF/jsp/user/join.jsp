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
        <form action="${pageContext.request.contextPath}/join" method="post" style="width: 20%">
          <div class="form-group">
            <div style="text-align: left;">
              <label for="userName"><font style="font-weight: normal; color: #F00;">*</font><font style="font-weight: normal; color: #666;">用户名：</font></label>
            </div>
            <input type="text" class="form-control" id="userName" name="userName" onblur="checkUserName()"
              placeholder="用户名/邮箱/手机号">
          </div>
          <div class="form-group">
            <div style="text-align: left">
              <label for="password"><font style="font-weight: normal; color: #F00;">*</font><font style="font-weight: normal; color: #666;">密码：</font></label>
            </div>
            <input type="password" class="form-control" id="password" name="password" placeholder="密码">
          </div>
          <div class="form-group">
            <div style="text-align: left">
              <label for="password"><font style="font-weight: normal; color: #F00;">*</font><font style="font-weight: normal; color: #666;">密码：</font></label>
            </div>
            <input type="password" class="form-control" id="password" name="password" placeholder="密码">
          </div>
          <button type="submit" class="btn btn-default">注册</button>
        </form>
      </div>
    </div>
  </section>
  <%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
</body>
</html>