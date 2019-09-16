<%@ taglib prefix="s"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.List"%>
<%@ page import="sun.net.www.content.image.png" %>
<%String path=request.getContextPath()+"/"; %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>无标题文档</title>
    <style type="text/css">
        #apDiv1 {
            position:absolute;
            width:100%;
            height:90%;
            z-index:1;
            left: 0px;
            top: 0px;

        }
        #apDiv2 {
            position:absolute;
            width:70%;
            height:60%;
            z-index:2;
            left: 15%;
            top: 10%;
            background-color: #FFFFFF;
        }
    </style>
</head>

<body>
<script type="text/javascript" language="javascript">
    function confirmAct()
    {
        if(confirm('确定要删除吗?'))
        {
            return true;
        }
        return false;
    }
    function reset()
    {
        if(confirm('确定要重置吗?'))
        {
            return true;
        }
        return false;
    }
    function changetype()
    {
        if(confirm('确定修改状态吗?'))
        {
            return true;
        }
        return false;
    }
</script>
<div id="apDiv1"><img src="<%=path%>images/background-2.png " width="100%" height="100%" /></div>
<div id="apDiv2">
    <form action="user/userlist!find.action" method="post">
    注册时间<input type="date" name="time1">至<input type="date" name="time2"><p/>
    用户名<input type="text" name="user.username">
    <input type="submit" value="查询">
    </form>
    <table width="100%" height="80%" border="1">
        <tr>
            <td>序号</td>
            <td>注册时间</td>
            <td>积分</td>
            <td>上传文档数</td>
            <td>下载文档数</td>
            <td>用户状态</td>
        </tr>
        <s:forEach items="${sessionScope.UserList}" var="user" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td>${user.regtime}</td>
            <td>${user.integration}</td>
            <td>${user.upfile}</td>
            <td>${user.downfile}</td>
            <s:if test="${user.del==0}">
                <td>启用</td>
            </s:if>
            <s:if test="${user.del==1}">
                <td>禁用</td>
            </s:if>
        </tr>
        </s:forEach>
    </table>
    <a href=""><button >上一页</button></a>
    <a></a>
    <a href=""><button >下一页</button></a>
</div>
</body>
</html>