<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jsp/js.jsp"%>
<title>Sign up</title>
</head>
<body>
  <%@ include file="/WEB-INF/jsp/nav.jsp"%>
  <section class="content-wrap">
    <div class="container" align="center">
      <div class="row">
        <h3>注册！</h3>
        <div class="chknumber">
          <label>验证码： <input name="kaptcha" type="text"
            id="kaptcha" maxlength="4" class="chknumber_input" />
          </label> <img src="captcha-image.do" width="55"
            height="20" id="kaptchaImage" style="margin-bottom: -3px" />
          <script type="text/javascript">
            $(function(){
              $('#kaptchaImage').click(function(){//生成验证码
                $(this).hide().attr('src', 'captcha-image.do').fadeIn();
              })
            });
          </script>
        </div>
      </div>
    </div>
  </section>
  <%@ include file="/WEB-INF/jsp/footer.jsp"%>
</body>
</html>