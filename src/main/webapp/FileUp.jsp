<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/3
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 实例 - 基本表单</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<form role="form" action="user/uploads.action" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="name">文件标题</label>
        <input type="text" class="form-control" id="name"
               placeholder="请输入标题" name="upFile.filetitle">
<%--        <input type="text" name="sessionScope.user.userid" hidden="hidden">--%>
<%--        <input type="text" name="upFile.uptime" hidden="hidden">--%>
        <p class="help-block">简介</p>
        <textarea cols="80" rows="6" placeholder="请输入简介" name="upFile.area"></textarea>
    </div>
    <div class="form-group">
        <label for="inputfile">文件输入</label>
        <input type="file" id="inputfile" name="uploadImage">
        <p class="help-block"></p>
    </div>
    <button type="submit" class="btn btn-default">提交</button>
</form>

</body>
</html>
