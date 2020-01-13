<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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
		<title>选座页面</title>
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
				<div class="col-md-4 col-md-offset-2">
					<h3><small>姓名：</small>${user.realname}&nbsp;&nbsp;&nbsp;&nbsp;<small>学号：</small>${user.uname}</h3>
				</div>
				<div class="col-md-5 col-md-offset-1" style="margin-top:2%;">
					<h4><a href="${pageContext.request.contextPath }/jsp/login.jsp">退出</a>
					<a href="${pageContext.request.contextPath }/StuLibrary">首页</a></h4>
				</div>
				<div class="center-block">
					<div class="center-block">
					<div class="row" s>
					  <div class="col-md-8 col-md-offset-2">
					  	<div class="col-md-8 col-md-offset-2" style="background-color: #F5E79E; border-radius: 10px;opacity:0.9;
  filter:alpha(opacity=40);">
					  		<div class="table-responsive">
					  			<table class="table">
					  				<c:forEach items="${listxt }" var="pp" varStatus="vs">
					  					<c:if test="${vs.index%5==0 }">
					  				<tr>
					  					</c:if>
					  					<td>
					  						<a href="${pageContext.request.contextPath }/StuSelectSeat?mg=${pp.img0}&mg1=${pp.img11 }&rn=${user.uname}&time=${pp.time}" ><img style="width:50px;height:35px;" class="img-responsive" src="${pageContext.request.contextPath }/picture/${pp.img0}"></a>
					  					</td>
					  					<c:if test="${vs.index%5==4 }">
					  				</tr>
					  					</c:if>
					  				</c:forEach>
					  			</table>
					  		</div>
					  	</div>
					  </div>
					</div>
				</div>
				</div>
			</div>
			
		</div>
	</body>
</html>

