<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>后台管理界面</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/layui/css/layui.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap.min.css" />
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">图书馆管理系统后台</div>
    
    <ul class="layui-nav layui-layout-left">
      
      
      
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
     	欢迎${admin.realname}
      </li>
      <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/jsp/login.jsp">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
      	<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/jsp/login.jsp">首页</a></li>
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">学生信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="${pageContext.request.contextPath }/jsp/ad_find_stu.jsp">修改学生信息</a></dd>
            <dd><a href="${pageContext.request.contextPath }/jsp/import_stu.jsp">导入学生信息</a></dd>
            <dd><a href="${pageContext.request.contextPath }/AdExportStu">导出学生信息</a></dd>
          </dl>
        </li>
				<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/AdLibrary">座位信息管理</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/ResultManage?action=adcjg&rn=${admin.uname}">选座结果</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/AdLibrary?action=lyl">查看图书室利用率</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px; width: 50%;margin-left: 25%; margin-top: 10%;">
<form action="${pageContext.request.contextPath }/UserServlet?action=adupdate2" method="post" name="form5">
	<div style="margin-top: 2%;">
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">用&nbsp;户&nbsp;名&nbsp;</span>
			<input type="text" class="form-control" name="updatename" value="${user.uname }" aria-describedby="basic-addon1">
		</div>
	</div>
	<div style="margin-top: 2%;">
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">真实姓名</span>
			<input type="text" class="form-control" name="updatereal" value="${user.realname }" aria-describedby="basic-addon1">
		</div>
	</div>
<div style="margin-top: 2%;">
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span>
			<input type="password" class="form-control" name="updatepwd" value="${user.pwd }" aria-describedby="basic-addon1">
		</div>
	</div>
<div style="margin-top: 2%;">
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">手&nbsp;机&nbsp;号&nbsp;</span>
			<input type="text" class="form-control" name="updatephone" value="${user.phone }" aria-describedby="basic-addon1">
		</div>
	</div>
<div style="margin-top: 2%;">

		<input class="btn btn-primary" type="submit" value="保存">


	<input class="btn btn-primary" type="reset" value="重置">

	</div>
<div style="margin-top: 2%;">
		${mag }
	</div>
<div style="margin-top: 2%;">
		<center>
			<a href="${pageContext.request.contextPath }/jsp/ad_find_stu.jsp" class="cka">返回</a>
		</center>
	</div>
</form>
    </div>
  </div>
  
  <div class="layui-footer">
  
  </div>
</div>
<script src="${pageContext.request.contextPath }/jsp/layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>