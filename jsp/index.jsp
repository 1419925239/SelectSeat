<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %> <%//core_rt   适应不同版本 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
	<head>
		<script type="text/javascript" src="${pageContext.request.contextPath }/jsp/js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/jsp/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/jsp/js/all.js" ></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap-theme.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap-theme.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap.min.css" />
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
		<title>首页</title>

	</head>
	<body style="margin-top: 71px;background: url(${pageContext.request.contextPath }/jsp/img/background5.jpg);background-position:center 0;background-repeat: no-repeat;background-attachment: fixed;background-size: cover;">
	
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
		  <div class="col-xs-6 col-sm-4 col-md-4 col-md-offset-2" >
		  	<h5><small>姓名：</small>${user.realname}&nbsp;&nbsp;&nbsp;&nbsp;<small>学号：</small>${user.uname}&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/jsp/login.jsp" >退出</a></h5>
		  	<ul class="list-group" style="opacity: 0.8;">
			  <li class="list-group-item">
				<div class="panel-heading">
					<h3><a  data-toggle="collapse" data-parent="#panel-822553" href="#panel-element-102282">选座</a></h3>
				</div>
				<div id="panel-element-102282" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="panel-heading">
							<h3><a  data-toggle="collapse" data-parent="#panel-822554" href="#panel-element-102283">今天</a></h3>
						</div>
						<div id="panel-element-102283" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="list-group">
									<c:forEach items="${listt}" var="tt">
									<li class="list-group-item">
										<a href="StuSeat?id=${tt.sh}&time=${tt.time}" >${tt.sname}</a>
									</li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="panel-heading">
							<h3><a  data-toggle="collapse" data-parent="#panel-822555" href="#panel-element-102284">明天</a></h3>
						</div>
						<div id="panel-element-102284" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="list-group">
								<c:forEach items="${listt1}" var="tt1">
									<li class="list-group-item">
										<a href="StuSeat?id=${tt1.sh}&time=${tt1.time}" >${tt1.sname}</a>
									</li>
								</c:forEach> 
								</ul>
							</div>
						</div>
					</div>
				</div>	
			  </li>
			  <li class="list-group-item">
			  	<h3><a href="UserServlet?action=update1&rn=${user.uname}">修改个人信息</a></h3>
			  </li>
			  <li class="list-group-item">
			  	<h3><a href="ResultManage?action=cjg&rn=${user.uname}">选座结果</a>
			  </li>
			</ul>
			<p class="text-danger">${meg }${mdg }${mcg}${mag }</p>
		  </div>
		  <div class="col-xs-6 col-sm-4 col-md-4">
		  	<span>图书馆使用率如下：</span><br>
		  	<span>今天上午图书室一</span>
		  	<div class="progress">
			  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="${lyl.am111}" aria-valuemin="0" aria-valuemax="100" style="width: ${lyl.am111}%">
			    <span class="sr-only"></span>
			  </div>
			</div>
			<span>今天上午图书室二</span>
		  	<div class="progress">
			  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="${lyl.am222}" aria-valuemin="0" aria-valuemax="100" style="width: ${lyl.am222}%">
			    <span class="sr-only"></span>
			  </div>
			</div>
			<span>今天下午图书室一</span>
		  	<div class="progress">
			  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="${lyl.pm111}" aria-valuemin="0" aria-valuemax="100" style="width: ${lyl.pm111}%">
			    <span class="sr-only"></span>
			  </div>
			</div>
			<span>今天下午图书室二</span>
		  	<div class="progress">
			  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="${lyl.pm222}" aria-valuemin="0" aria-valuemax="100" style="width: ${lyl.pm222}%">
			    <span class="sr-only"></span>
			  </div>
			</div>
			<span>明天上午图书室一</span>
		  	<div class="progress">
			  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="${lyl.tam111}" aria-valuemin="0" aria-valuemax="100" style="width: ${lyl.tam111}%">
			    <span class="sr-only"></span>
			  </div>
			</div>
			<span>明天上午图书室二</span>
		  	<div class="progress">
			  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="${lyl.tam222}" aria-valuemin="0" aria-valuemax="100" style="width: ${lyl.tam222}%">
			    <span class="sr-only"></span>
			  </div>
			</div>
			<span>明天下午图书室一</span>
		  	<div class="progress">
			  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="${lyl.tpm111}" aria-valuemin="0" aria-valuemax="100" style="width: ${lyl.tpm111}%">
			    <span class="sr-only"></span>
			  </div>
			</div>
			<span>明天下午图书室二</span>
		  	<div class="progress">
			  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="${lyl.tpm222}" aria-valuemin="0" aria-valuemax="100" style="width: ${lyl.tpm222}%">
			    <span class="sr-only"></span>
			  </div>
			</div>
		  </div>
		</div>
		
	</div>
	
	</body>
</html>

