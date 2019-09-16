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
    <form action="man/filelist!findFileList.action" method="post">
        文档标题<input type="text" name="file.filetitle">&nbsp;
        上传人<input type="text" name="file.userid">
        文档类型<select>
        <option>txt</option>
        <option>ppt</option>
            </select>
        <br/>
        上传时间<input type="date" name="time1">至<input type="date" name="time2">&nbsp;
        <input type="submit" value="查询">
    </form>
    <table width="100%" height="80%" border="1">
        <tr>
            <td>文档标题</td>
            <td>上传人</td>
            <td>上传时间</td>
            <td>下载积分</td>
            <td>文档类型</td>
            <td>操作</td>
        </tr>
        <s:forEach items="${sessionScope.FileList}" var="file" varStatus="status">
            <tr>
                <td>${file.filetitle}</td>
                <td>${file.userid}</td>
                <td>${file.uptime}</td>
                <td>${file.intergation}</td>
                <td>${file.filetype}</td>
               <td>
                   <a><button>下载</button></a>
                   <a><button>审核通过</button></a>
                   <a><button>审核不通过</button></a>
               </td>
            </tr>
        </s:forEach>
    </table>
    <a href=""><button >上一页</button></a>
    <a></a>
    <a href=""><button >下一页</button></a>
</div>
</body>
</html>