<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %> <%//core_rt   适应不同版本 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
	<head>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/jsp/js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/jsp/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/jsp/js/all.js" ></script>
		
		<meta charset="UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap-theme.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap-theme.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap.min.css" />
		<title>选座结果页面</title>
	</head>
	<body style="margin-top: 71px;background: url(${pageContext.request.contextPath}/jsp/img/background5.jpg);background-position:center 0;background-repeat: no-repeat;background-attachment: fixed;background-size: cover;">
		<div class="container">
			<div class="row" >
			 <div class="col-xs-12 col-sm-12 col-md-12">
		 		<div class="media">
				  <div class="media-left media-middle ">
				      <img class="media-object" src="${pageContext.request.contextPath }/jsp/img/xh1.png" style="width: 30px; height: 30px;">
				  </div>
				  <div class="media-right media-body">
				    <h4 style="margin: auto; padding-top: 10px;">图书馆选座系统</h4>
				  </div>
				  <div class="media-left media-body">
				  	<div id="divT" style="margin-top: 15px;"></div>  
				  </div>
				</div>
		 </div>
			</div>
			<div class="row" style="margin-top: 20px;">
				<div class="center-block">
					<div class="row" >
					  <div class="col-md-6 col-md-offset-3"><small>姓名：</small>${user.realname}&nbsp;&nbsp;&nbsp;&nbsp;<small>学号：</small>${user.uname}</div>
					  <div class="col-md-6 col-md-offset-3">
					  	<div class="col-md-8 col-md-offset-3" style="background-color: #FFFFFF;border-radius: 10px; opacity: 0.8;">
					  		<div class="table-responsive">
					  			<table class="table">
					  				<tr>
					  					<td>图书室名（使用时间）</td>
					  					<td>座位号</td>
					  					<td>使用日期</td>
					  				</tr>
					  				<c:forEach items="${listjg}" var="jg">
					  				<tr>
					  					<td>${jg.name}</td>
					  					<td>${jg.zwh}</td>
					  					<td>${jg.rq}</td>
					  				</tr>
					  				 
					  				<tr class="text-right">
					  					<td>
					  						<a class="btn btn-default" href="ResultManage?action=sjg&rn=${user.uname }&time=am" role="button" >退选</a>
					  					</td>
					  					<td>
					  						<a class="btn btn-default" href="ResultManage?action=gjg&rn=${user.uname }&time=am" role="button" >改选</a>
					  					</td>
					  					
					  				</tr>
					  				</c:forEach>
					  				<c:forEach items="${listjg1}" var="jg1">
					  				<tr>
					  					<td>${jg1.name}</td>
					  					<td>${jg1.zwh}</td>
					  					<td>${jg1.rq}</td>
					  				</tr>
					  				 
					  				<tr class="text-right">
					  					<td>
					  						<a class="btn btn-default" href="ResultManage?action=sjg&rn=${user.uname }&time=pm" role="button" >退选</a>
					  					</td>
					  					<td>
					  						<a class="btn btn-default" href="ResultManage?action=gjg&rn=${user.uname }&time=pm" role="button" >改选</a>
					  					</td>
					  					
					  				</tr>
					  				</c:forEach>
					  				<c:forEach items="${listjg2}" var="jg2">
					  				<tr>
					  					<td>${jg2.name}</td>
					  					<td>${jg2.zwh}</td>
					  					<td>${jg2.rq}</td>
					  				</tr>
					  				 
					  				<tr class="text-right">
					  					<td>
					  						<a class="btn btn-default" href="ResultManage?action=sjg&rn=${user.uname }&time=tam" role="button" >退选</a>
					  					</td>
					  					<td>
					  						<a class="btn btn-default" href="ResultManage?action=gjg&rn=${user.uname }&time=tam" role="button" >改选</a>
					  					</td>
					  					
					  				</tr>
					  				</c:forEach>
					  				<c:forEach items="${listjg3}" var="jg3">
					  				<tr>
					  					<td>${jg3.name}</td>
					  					<td>${jg3.zwh}</td>
					  					<td>${jg3.rq}</td>
					  				</tr>
					  				 
					  				<tr class="text-right">
					  					<td>
					  						<a class="btn btn-default" href="ResultManage?action=sjg&rn=${user.uname }&time=tpm" role="button" >退选</a>
					  					</td>
					  					<td>
					  						<a class="btn btn-default" href="ResultManage?action=gjg&rn=${user.uname }&time=tpm" role="button" >改选</a>
					  					</td>
					  					
					  				</tr>
					  				</c:forEach>
					  				<tr class="text-right">
					  					<td colspan="3">
					  						<a href="StuLibrary">>back</a>			
					  					</td>
					  			</table>
					  		</div>
					  	</div>
					  </div>
					</div>
				</div>
			</div>
			
	</body>
</html>
