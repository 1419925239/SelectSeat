<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %> <%//core_rt   适应不同版本 %>

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
        <li class="layui-nav-item ">
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
    <div style="padding: 15px; width: 50%; margin-left: 25%;margin-top: 10%;">
   <table class="layui-table" lay-skin="line">
  <colgroup>
    <col width="250">
    <col width="150">
    <col width="100">
    <col>
  </colgroup>
  <thead>
    <tr>
      <th>图书室名（使用时间）</th>
      <th>座位号</th>
      <th>使用时间</th>
    </tr> 
  </thead>
  <tbody>
  	<c:forEach items="${listjg}" var="jg">
    <tr>
      <td>${jg.name}</td>
      <td>${jg.zwh}</td>
      <td>${jg.rq}</td>
    </tr>
    <tr>
    	<td colspan="2"><p class="text-right"><a href="ResultManage?action=adsjg&rn=${admin.uname }&time=am" class="btn btn-default btn-lg active" onclick='return window.confirm("您确定要退选上午座位吗？")'>退选</a></p></td>
    	<td><p><a href="ResultManage?action=adgjg&rn=${admin.uname }&time=am" class="btn btn-default btn-lg active" onclick='return window.confirm("您确定要改选上午座位吗？")'>改选</a></p></td>
    </tr>
    </c:forEach>
    <c:forEach items="${listjg1}" var="jg1">
    <tr>
      <td>${jg1.name}</td>
      <td>${jg1.zwh}</td>
      <td>${jg1.rq}</td>
    </tr>
    <tr>
    	<td colspan="2"><p class="text-right"><a href="ResultManage?action=adsjg&rn=${admin.uname }&time=pm" class="btn btn-default btn-lg active" onclick='return window.confirm("您确定要退选上午座位吗？")'>退选</a></p></td>
    	<td><p><a href="ResultManage?action=adgjg&rn=${admin.uname }&time=pm" class="btn btn-default btn-lg active" onclick='return window.confirm("您确定要改选上午座位吗？")'>改选</a></p></td>
    </tr>
    </c:forEach>
    <c:forEach items="${listjg2}" var="jg2">
    <tr>
      <td>${jg2.name}</td>
      <td>${jg2.zwh}</td>
      <td>${jg2.rq}</td>
    </tr>
    <tr>
    	<td colspan="2"><p class="text-right"><a href="ResultManage?action=adsjg&rn=${admin.uname }&time=tam" class="btn btn-default btn-lg active" onclick='return window.confirm("您确定要退选上午座位吗？")'>退选</a></p></td>
    	<td><p><a href="ResultManage?action=adgjg&rn=${admin.uname }&time=tam" class="btn btn-default btn-lg active" onclick='return window.confirm("您确定要改选上午座位吗？")'>改选</a></p></td>
    </tr>
    </c:forEach>
    <c:forEach items="${listjg3}" var="jg3">
    <tr>
      <td>${jg3.name}</td>
      <td>${jg3.zwh}</td>
      <td>${jg3.rq}</td>
    </tr>
    <tr>
    	<td colspan="2"><p class="text-right"><a href="ResultManage?action=adsjg&rn=${admin.uname }&time=tpm" class="btn btn-default btn-lg active" onclick='return window.confirm("您确定要退选上午座位吗？")'>退选</a></p></td>
    	<td><p><a href="ResultManage?action=adgjg&rn=${admin.uname }&time=tpm" class="btn btn-default btn-lg active" onclick='return window.confirm("您确定要改选上午座位吗？")'>改选</a></p></td>
    </tr>
    </c:forEach>
  </tbody>
</table> 
	<p class="text-right" style="margin-right: 10%;"><a href="${pageContext.request.contextPath }/jsp/admin.jsp">返回</a></p><br>
	<p class="text-center text-danger">${mbg }</p>
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