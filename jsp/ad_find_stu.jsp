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
      	<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/jsp/admin.jsp">首页</a></li>
        <li class="layui-nav-item">
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
  
  <div class="layui-body" style="background-color: #F2F2F2;">
    <!-- 内容主体区域 -->
    <div style="padding: 15px; width: 50%; margin-top: 10%; margin-left:27%;">
    	<form role="form" action="${pageContext.request.contextPath }/UserServlet?action=adupdate1" method="post" name="form1">
			<div class="form-group">
			<label for="exampleInputEmail1">学生账号</label>
			<input type="text" class="form-control" id="exampleInputEmail1" />
			</div>
			<div id="in">	
			<input type="submit" class="btn btn-default " value="查询"/>
			<div style="height: 15px;"></div>
			 <input type="reset" class="btn btn-default" value="重置"/>
			</div>
	</form>		
    </div>
  </div>
  
  <div class="layui-footer ">
  
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
