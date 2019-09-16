<%@ taglib prefix="s"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List"%>
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
<div id="apDiv1"><img src="mentality/img/1.jpg" width="100%" height="100%" /></div>
<div id="apDiv2">
<table width="100%" height="80%" border="1">
  <tr>
      <td>序号</td>
    <td>账号</td>
    <td>姓名</td>
    <td>密码</td>
    <td>年龄</td>
    <td>手机号</td>
    <td>操作</td>
  </tr>
<s:forEach items="${sessionScope.Manager}" var="man" varStatus="status">
   <tr>
   <td>${status.index+1}</td>
   <td>${man.manid}</td>
   <td>${man.name}</td>
   <td>${man.pwd}</td>
   <td>${man.age}</td>
   <td>${man.phone}</td>
   <td>
   <a href="" onclick="return confirmAct()">删除</a>|<a href="" onclick="return reset()">重置密码</a>
   </td>
  </tr>
</s:forEach>
</table>
<a href=""><button >上一页</button></a>
  <a></a>
  <a href=""><button >下一页</button></a>


<form action="" method="post">
姓氏查询<input type="text" name="couname"  placeholder="请输入用户名" >
职称查询<select name="rolename" >
   	<option value="0" selected>全部</option>
    <option value="1" >管理员</option>
    <option value="2">咨询师</option>
</select>
状态<select name="type" >
	<option value="2" selected>全部</option>
    <option value="1" >启用</option>
    <option value="0">禁用</option>
</select>
      
<input  type = "submit"  value="查询用户 ">
<a href=""><input  type = "button"  value="新增用户"></a>
</form>


</div>
</body>
</html>