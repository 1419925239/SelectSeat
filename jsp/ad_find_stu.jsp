<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>��̨�������</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/layui/css/layui.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/bootstrap.min.css" />
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">ͼ��ݹ���ϵͳ��̨</div>
    
    <ul class="layui-nav layui-layout-left">
      
      
      
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
     	��ӭ${admin.realname}
      </li>
      <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/jsp/login.jsp">�˳�</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
      	<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/jsp/admin.jsp">��ҳ</a></li>
        <li class="layui-nav-item">
          <a class="" href="javascript:;">ѧ����Ϣ����</a>
          <dl class="layui-nav-child">
            <dd><a href="${pageContext.request.contextPath }/jsp/ad_find_stu.jsp">�޸�ѧ����Ϣ</a></dd>
            <dd><a href="${pageContext.request.contextPath }/jsp/import_stu.jsp">����ѧ����Ϣ</a></dd>
            <dd><a href="${pageContext.request.contextPath }/AdExportStu">����ѧ����Ϣ</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/AdLibrary">��λ��Ϣ����</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/ResultManage?action=adcjg&rn=${admin.uname}">ѡ�����</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/AdLibrary?action=lyl">�鿴ͼ����������</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body" style="background-color: #F2F2F2;">
    <!-- ������������ -->
    <div style="padding: 15px; width: 50%; margin-top: 10%; margin-left:27%;">
    	<form role="form" action="${pageContext.request.contextPath }/UserServlet?action=adupdate1" method="post" name="form1">
			<div class="form-group">
			<label for="exampleInputEmail1">ѧ���˺�</label>
			<input type="text" class="form-control" id="exampleInputEmail1" />
			</div>
			<div id="in">	
			<input type="submit" class="btn btn-default " value="��ѯ"/>
			<div style="height: 15px;"></div>
			 <input type="reset" class="btn btn-default" value="����"/>
			</div>
	</form>		
    </div>
  </div>
  
  <div class="layui-footer ">
  
  </div>
</div>
<script src="${pageContext.request.contextPath }/jsp/layui/layui.js"></script>
<script>
//JavaScript��������
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>
