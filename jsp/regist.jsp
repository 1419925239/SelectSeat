<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

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
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
		
		<title>注册界面</title>
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
			<div class="center-block"   style="width: 80%;border-radius: 5px;">
			<form class="form-horizontal" action="${pageContext.request.contextPath }/UserServlet?action=regist" method="post"  name="form3">
			  <div class="form-group">
			    <label for="Textinput" class="col-sm-2 control-label">用户名</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" id="Textinput" placeholder="account number" name="registname">
			    </div>
			  </div><div class="form-group">
			    <label for="Textinput" class="col-sm-2 control-label">真实姓名</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" id="Textinput" placeholder="real name" name="registreal">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
			    <div class="col-sm-10">
			      <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="registpwd">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="Textinput" class="col-sm-2 control-label">手机号</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" id="Textinput" placeholder="phone number" name="registphone">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <input type="submit" class="btn btn-default" value="注册">
			      <input type="reset" class="btn btn-default" value="重置">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      ${mag }
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			     <a href="jsp/login.jsp">返回</a>
			    </div>
			  </div>
			</form>
			</div>
		</div>	
			
		</div>
	</body>
</html>
