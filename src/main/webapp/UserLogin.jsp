<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% String path=request.getContextPath()+"/"; %>
<!DOCTYPE html>

<html>
<head>
<title>登录页面html代码表单样式</title>
    <!-- for-mobile-apps -->
<!--     <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--     <meta http-equiv="Content-Type" content="charset=utf-8" /> -->

    <!-- //for-mobile-apps -->
    <link href="<%=path %>css/style1.css" type="text/css" rel="stylesheet"  />
	<script src="js/jquery.min.js"></script>
    <script type="text/javascript">

<%--    --%>
<%--    function image() {--%>
<%--    // 获取img元素--%>
<%--    // 为了让浏览器发送请求到servlet, 所以一定要改变src--%>
<%--    document.getElementsByTagName("img")[0].src=--%>
<%--    	"<%=path %>VerifyCodeServlet?time="+new Date().getTime();--%>
<%--};--%>
    </script>

</head>
<body>
    <!-- main -->
    <div class="main">
        <h1>
            用户登录系统
        </h1>
        <form action="<%=path%>admin/userLogin.action" onclick="" method="post">
            <input type="text" name="userid" id="idd"  onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '用户名';}"
                   required="" placeholder="用户名">
            <input type="password" name="pwd" id="pwd"  onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}"
                   required="" placeholder="密码">
<%--            <input type="text" name="vcode" placeholder="验证码"><br/>--%>
<%--            <img src="<%=path%>VerifyCodeServlet" >--%>
<%--            <input type="button" value="看不清？换一张" name="btn" onclick="image()"><p/>--%>
<%--            <font color="red">${requestScope.Mess}</font>--%>
            <input type="submit" value="登录">
<%--             <button id="login" style="width: 500px;height: 60px;background-color: pink">登录</button>--%>
           
        </form>
         <a href="register.jsp"><button style="width: 500px;height: 60px;background-color: pink">注册</button></a>
    </div>
    <div class="footer">
        <p>
            &copy 2016 Welcome Login Form. All rights reserved
        </p>
    </div>
    <!-- //main -->
    
</body>
</html>