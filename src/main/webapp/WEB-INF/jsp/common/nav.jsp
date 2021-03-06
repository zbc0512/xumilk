<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default">
  <div class="container">
    <div class="row">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
          data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Xumilk</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
            class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${pageContext.request.contextPath}">Xumilk</a>
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li><a href="${pageContext.request.contextPath}">首页</a></li>
          <li><a href="${pageContext.request.contextPath}/order">我的订单<span class="sr-only">(current)</span></a></li>
          <li><a href="${pageContext.request.contextPath}/contactus">联系我们</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
          </form>
          <li id="join"><a href="${pageContext.request.contextPath}/join">注册</a></li>
          <li id="login"><a href="${pageContext.request.contextPath}/login">登录</a></li>
          <li id="profile" class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
            aria-haspopup="true" aria-expanded="false">个人中心<span class="caret"></span>
          </a>
            <ul class="dropdown-menu">
              <li><a href="${pageContext.request.contextPath}/user.do?method=user">个人信息</a></li>
              <li><a href="${pageContext.request.contextPath}/order">我的订单</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="${pageContext.request.contextPath}/logout">退出</a></li>
            </ul></li>
        </ul>
      </div>
      <!-- /.navbar-collapse -->
    </div>
  </div>
  <!-- /.container-fluid -->
</nav>