<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jsp/js.jsp" %>
<title>Download</title>
</head>
<body>
  <%@ include file="/WEB-INF/jsp/nav.jsp" %>
  <section class="content-wrap">
    <div class="container" align="center">
      <div class="row">
        <h3>请输入下载地址：</h3>
        <form action="/download.do?method=download" method="post">
                地址：<input type="text" name="url" id="url" />
              <input type="submit" value="下载" />
        </form>
      </div>
    </div>
  </section>
  <%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>