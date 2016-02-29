<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jsp/js.jsp" %>
<title>User</title>
</head>
<body>
  <%@ include file="/WEB-INF/jsp/nav.jsp" %>
  <section class="content-wrap">
    <div class="container" align="center">
      <div class="row">
        <h1>用户信息</h1>
        <%=session.getAttribute("name")%>
      </div>
    </div>
  </section>
  <%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>
