<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/21
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath()+"/"; %>
<html>
  <head>
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="<%=path%>layui/css/layui.css">
  </head>
  <body class="layui-layout-body">
  <div class="layui-layout layui-layout-admin">
    <div class="layui-header">
      <div class="layui-logo">layui 后台布局</div>
      <!-- 头部区域（可配合layui已有的水平导航） -->
      <ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item"><a href="">控制台</a></li>
        <li class="layui-nav-item"><a href="">商品管理</a></li>
        <li class="layui-nav-item"><a href="">用户</a></li>
        <li class="layui-nav-item">
          <a href="javascript:;">其它系统</a>
          <dl class="layui-nav-child">
            <dd><a href="">邮件管理</a></dd>
            <dd><a href="">消息管理</a></dd>
            <dd><a href="">授权管理</a></dd>
          </dl>
        </li>
      </ul>
      <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
          <a href="javascript:;">
            <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
            ${sessionScope.man.name}
<%--            <s:property value="man.name"></s:property>--%>
          </a>
          <dl class="layui-nav-child">
            <dd><a href="">基本资料</a></dd>
            <dd><a href="">安全设置</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">退了</a></li>
      </ul>
    </div>

    <div class="layui-side layui-bg-black">
      <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
          <li class="layui-nav-item layui-nav-itemed">
            <a class="" href="javascript:;">用户管理</a>
            <dl class="layui-nav-child">
              <dd><a href="<%=path%>man/list!findManList.action" target="right">管理员登录</a></dd>
              <dd><a href="<%=path%>admin/find.action" target="right">用户查询</a></dd>
              <dd><a href="javascript:;">用户管控</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item">
            <a href="javascript:;">文档管理</a>
            <dl class="layui-nav-child">
              <dd><a href="<%=path%>man/filelist!findFileList.action" target="right">文档审核</a></dd>
              <dd><a href="javascript:;">文档配置</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item">
            <a href="javascript:;">日志管理</a>
            <dl class="layui-nav-child">
              <dd><a href="javascript:;">日志列表</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item">
            <a href="javascript:;">系统配置</a>
            <dl class="layui-nav-child">
              <dd><a href="javascript:;">上传奖励配置</a></dd>
              <dd><a href="javascript:;">注册奖励配置</a></dd>
            </dl>
          </li>
        </ul>
      </div>
    </div>

    <div class="layui-body">
      <!-- 内容主体区域 -->
      <div style="padding: 15px;">内容主体区域
<%--      <s:iterator var="c" value="man.plist" status="st">--%>
<%--        <s:property value="#st.index"></s:property>:--%>
<%--        <s:property value="c"></s:property>--%>
<%--      </s:iterator>--%>
      </div>
      <iframe id="aa" name="right" src="" style="width:100%;height:100%"></iframe>
    </div>

    <div class="layui-footer">
      <!-- 底部固定区域 -->
      © layui.com - 底部固定区域
    </div>
  </div>
  <script src="<%=path%>layui/layui.js"></script>
  <script>
    //JavaScript代码区域
    layui.use('element', function(){
      var element = layui.element;

    });
  </script>
  </body>
</html>
