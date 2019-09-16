<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
    <%String path=request.getContextPath()+"/"; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
	<script src="js/jquery.min.js"></script>
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:100%;
	height:150%;
	z-index:1;
	background-image: url(images/watercolor28.png);
}
#apDiv2 {
	position:absolute;
	width:40%;
	height:100%;
	z-index:2;
	left: 30%;
	top: 40%;
}
label{
            display: inline-block;
            min-width: 100px;/*或者 width: 100px;*/
        }
		h1{
			text-align:center;
			padding-top:10%;
			}
</style>

<script type="text/javascript">

function validateForm()
{
	var id = $("#id").val();
	var pwd = $("#pwd").val();
	if(id==null||""==id)
	{
		alert("账号不能为空");	
		return false;
	}
	if(pwd==null||""==pwd)
	{
		alert("账号不能为空");	
		return false;
	}
}
//----------账号验证
function checkuser()
{
	var id = $("#id").val();
	var s = /^\w{3,12}$/;
	if(!s.test(id))
	{
		$("#aaa").html("用户名由英文字母和数字组成的4-16位字符，以字母开头"); 
	    return false;
	}
    $.post("admin/userReg.action",{
        "userid":id},
        function(data){
            if(data=="1")
            {
                $("#aaa").html("用户可用");
            }else{
                $("#aaa").html("用户不可用");
            }

        }
    )
}
//----密码验证
function checkpwd()
{
	var pwd = $("#pwd").val();
	var s = /^[a-zA-Z0-9]{3,12}$/;
	if(!s.test(pwd))
	{
		$("#bbb").html("密码不能含有非法字符，长度在6-12之间"); 
	    return false;
	}
}
//-----确认密码
function checkpwd1()
{
	var pwd = $("#pwd").val();
	var pwd1 = $("#pwd1").val();
	if(pwd1!=pwd)
	{
		$("#bbb1").html("两次密码必须相同"); 
	}else{
		$("#bbb1").html("√");
	}
}
function checkMobile()
{
	var phone = $("#phone").val();
	var t =/^1\d{10}$/;
	if(null==phone||""==phone)
	{
		$("#ppp").html("手机号码不能为空");
	}
	if(!t.test(phone))
	{
		$("#ppp").html("手机号码不正确，请重新输入");
	}else
	{
		$("#ppp").html("√");
	}
}

function checkemail() {
	
	var add = $("#add").val();
	var a=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
	if(!a.test(add))
	{
		$("#addd").html("请输入正确的邮箱地址");
	}
	
}
</script>
</head>

<body>
<div id="apDiv1">
<h1 style="color:#000000">欢迎注册</h1>
</div>
<div id="apDiv2" align="center">
<form action="<%=path %>user/reg.action" id="right" method="post" onsubmit="return validateForm()" enctype="multipart/form-data">
	<%--@declare id="input2"--%><%--@declare id="inputs"--%>
    <label for="inputs" style="color:black">账号</label><input type="text" id="id" name="user.userid" onblur="checkuser()"></input>
    <p />
    <span style="color:red" id="aaa"></span>
    <br />
    <label for="input2" style="color:#000000">密码</label><input type="password" id="pwd" name="user.pwd" onblur="checkpwd()"></input>
    <p />
    <span style="color:red" id="bbb"></span>
    <br />
    <label for="input2" style="color:black">确认密码</label><input type="password" id="pwd1" name="pwd" onblur="checkpwd1()"></input>
    <p />
    <span style="color:red" id="bbb1"></span>
    <br />
    <label for="inputs" style="color:black">姓名</label><input type="text" id="name" name="user.username"></input>
    <p />
        <label for="inputs" style="color:black">学历</label><input type="text" id="edu" name="user.edu"/>
     <br />
      <label for="inputs" style="color:black">职业</label><input type="text" id="job" name="user.job"/>
   <br />
   <label for="inputs" style="color:black">手机号</label><input type="number" id="phone" name="user.phone" onblur="checkMobile()"></input>
    <p />
    <span style="color:red" id="ppp"></span>
    <p />
   <label for="inputs" style="color:black">邮箱</label><input type="text" id="add" name="user.email" onblur="checkemail()"></input>
    <p />
    <span style="color:red" id="addd"></span>
    <p />
        <label for="inputs" style="color:black">头像上传</label><input type="file" name="uploadImage"/>
    <p/>
   <label for="inputs" style="color:black"></label><input type="submit" value="注册"/>
   </form>
</div>
</body>
</html>