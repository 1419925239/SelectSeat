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
  <div class="layui-header ">
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
   <div class="layui-footer">
   
  </div>
  <div class="layui-body" style="background-color: #F2F2F2;" >
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
  <ul class="layui-tab-title">
    <li class="layui-this">今天</li>
    <li>明天</li>
  </ul>
  <div class="layui-tab-content" style="height: 100px;">
    <div class="layui-tab-item layui-show">
    	<ul class="list-group" style="width: 20%;">
			<c:forEach items="${listt}" var="tt">
			<li class="list-group-item">
				<a href="AdSeat?id=${tt.sh}&time=${tt.time}" >${tt.sname}</a>
			</li>
			</c:forEach>
		</ul>
    </div>
    <div class="layui-tab-item">
    	<ul class="list-group" style="width: 20%;">
			<c:forEach items="${listt1}" var="tt1">
			<li class="list-group-item">
				<a href="AdSeat?id=${tt1.sh}&time=${tt1.time}" >${tt1.sname}</a>
			</li>
			</c:forEach>
		</ul>
    </div>
  </div>
</div>
<div style="margin-top: 2%;">
	<center>
	<p class="text-danger">注意：点击白色座位，管理员完成选座；点击红色座位，管理员查看座位占有人的信息</p>

	<table width="500px" cellspacing="5px" border="0">
		<c:forEach items="${listxt }" var="pp" varStatus="vs">
			<c:if test="${vs.index%5==0 }">
				<tr>
			</c:if>
			<td width="50" height="50">
				<a href="${pageContext.request.contextPath }/AdSelectSeat?mg=${pp.img0}&mg1=${pp.img11 }&mg01=${pp.img01 }&time=${pp.time}&sh=${pp.sh}&zwh=${pp.zwh}&rn=${admin.uname}"><img style="width:50px;height:50px;" src="${pageContext.request.contextPath }/picture/${pp.img0}"></a>
			</td>
			<c:if test="${vs.index%5==4 }">
				</tr>
			</c:if>
		</c:forEach>
	</table>
	<strong><p class="text-danger"> ${mag}${mbg }${meg }${mfg }</p></strong></center>
</div>
  </div>
   <div class="layui-footer">
  		<p class="text-right text-danger">Design by Hbuilder</p>
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