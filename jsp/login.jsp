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
		<title>��¼����</title>
	</head>
	<body style="margin-top: 71px;background: url(${pageContext.request.contextPath }/jsp/img/backg.jpg);background-position:center 0;background-repeat: no-repeat;background-attachment: fixed;background-size: cover;"><div><h2><br></h2></div>
		<div class="container">
				<div class="row" >
		  <div class="col-xs-12 col-sm-12 col-md-12">
		 		<div class="media">
				  <div class="media-left media-middle ">
				      <img class="media-object" src="${pageContext.request.contextPath }/jsp/img/xh1.png" style="width: 30px; height: 30px;">
				  </div>
				  <div class="media-right media-body">
				    <h4 style="margin: auto; padding-top: 10px;">ͼ���ѡ��ϵͳ</h4>
				  </div>
				  <div class="media-left media-body">
				  	<div id="divT" style="margin-top: 15px;margin-left:35%"></div>  
				  </div>
				</div>
		 </div>
	
		</div>
		<div class="row" style="margin-top: 20px;">
		<div class="col-xs-4 col-xs-offset-1 col-sm-4 col-sm-offset-1 col-md-3 col-md-offset-1">
				<div class="panel panel-info">
					<div class="panel-heading">
					    <h3 class="panel-title">��ܰ��ʾ</h3>
					  </div>
					  <div class="panel-body">
					    ��ϵͳ���ڽ�����
					 </div>
				</div>
			</div>
			<div class="center-block"   style="width: 80%;border-radius: 5px;">
			<div class="col-xs-7 col-sm-7 col-md-8 "style="background-color: #FFFFFF;border-radius: 10px;opacity:0.9;">
			<form class="form-horizontal" action="${pageContext.request.contextPath }/UserServlet?action=login" method="post" name="form1" >
			  <div class="form-group">
			  	<label class="col-sm-5 col-sm-offset-3 control-label"><p class="text-danger">��ӭԤԼͼ�����λ!</p></label>
			  </div>
			  <div class="form-group">
			    <label for="Textinput" class="col-sm-2 control-label">�˺�</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="Textinput" placeholder="account number" name="loginname">
			    </div>
			    <div class="col-sm-4 col-sm-offset-9"><span id="msg1"></span></div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">����</label>
			    <div class="col-sm-10">
			      <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="loginpwd">
			    </div>
			    <div class="col-sm-4 col-sm-offset-9"><span id="msg2"></span></div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-5 col-sm-7">
			      <div class="radio">
			        <label>
			          <input type="radio"  id="optionsRadios1"  value="0" name="sf">ѧ��
			        </label>
			         <label>
			          <input type="radio"  id="optionsRadios2" value="1" name="sf">����Ա
			        </label>
			      </div>
			       <div class="col-sm-4 col-sm-offset-9"><span id="msg3"></span></div>
			    </div>
			  </div>
			  <div class="form-group">
			  	<label class="col-sm-3 control-label" for="inputx">��������֤��</label>
			  	<div class="col-sm-3">
			  		<input type="tel" class="form-control" id="inputx">
			  	</div>
			  	<div class="col-sm-5">
			  		<span><canvas id="canvas" width="120" height="45"></canvas>
             <a href="#" id="changeImg">�����壬��һ��</a></span>
			  	</div>
			  	 <div class="col-sm-4 col-sm-offset-9"><span id="msg4"></span></div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-5 col-sm-7">
			      <input type="submit" class="btn btn-default" name="x" value="��¼">
			      <input type="submit" class="btn btn-default" name="x" value="ע��">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			     ${mag }${mbg }
			    </div>
			  </div>
			</form>
			</div>
			</div>
		</div>
		
	</body>
	<script>
  /**����һ�������**/
  function randomNum(min,max){
    return Math.floor( Math.random()*(max-min)+min);
  }
  /**����һ�����ɫ**/
  function randomColor(min,max){
    var r = randomNum(min,max);
    var g = randomNum(min,max);
    var b = randomNum(min,max);
    return "rgb("+r+","+g+","+b+")";
  }
  drawPic();
  document.getElementById("changeImg").onclick = function(e){
    e.preventDefault();
    drawPic();
  }
 
  /**������֤��ͼƬ**/
  function drawPic(){
    var canvas=document.getElementById("canvas");
    var width=canvas.width;
    var height=canvas.height;
    var ctx = canvas.getContext('2d');
    ctx.textBaseline = 'bottom';
 
    /**���Ʊ���ɫ**/
    ctx.fillStyle = randomColor(180,240); //��ɫ��̫����ܵ��¿�����
    ctx.fillRect(0,0,width,height);
    /**��������**/
    var str = 'ABCEFGHJKLMNPQRSTWXY123456789';
    for(var i=0; i<4; i++){
      var txt = str[randomNum(0,str.length)];
      ctx.fillStyle = randomColor(50,160);  //�������������ɫ
      ctx.font = randomNum(15,40)+'px SimHei'; //������������С
      var x = 10+i*25;
      var y = randomNum(25,45);
      var deg = randomNum(-45, 45);
      //�޸�����ԭ�����ת�Ƕ�
      ctx.translate(x,y);
      ctx.rotate(deg*Math.PI/180);
      ctx.fillText(txt, 0,0);
      //�ָ�����ԭ�����ת�Ƕ�
      ctx.rotate(-deg*Math.PI/180);
      ctx.translate(-x,-y);
    }
    /**���Ƹ�����**/
    for(var i=0; i<8; i++){
      ctx.strokeStyle = randomColor(40,180);
      ctx.beginPath();
      ctx.moveTo( randomNum(0,width), randomNum(0,height) );
      ctx.lineTo( randomNum(0,width), randomNum(0,height) );
      ctx.stroke();
    }
    /**���Ƹ��ŵ�**/
    for(var i=0; i<100; i++){
      ctx.fillStyle = randomColor(0,255);
      ctx.beginPath();
      ctx.arc(randomNum(0,width),randomNum(0,height), 1, 0, 2*Math.PI);
      ctx.fill();
    }
  }
  </script>
</html>


