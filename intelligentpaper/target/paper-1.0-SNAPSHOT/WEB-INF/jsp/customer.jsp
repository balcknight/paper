<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>题库管理</title>

	<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">小智试卷 V1.0</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right" style="padding-top: 5px">
			<li>朱老师</li>
			<li><a href="#">注销</a></li>
		</ul>
		<!-- /.navbar-top-links -->
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">

				<ul class="nav" id="side-menu">
					<li><a href="#" class="active"><i
							class="fa fa-edit fa-fw"></i> 题库管理</a></li>
					<li><a href="#"><i
							class="fa fa-dashboard fa-fw"></i> 模板管理</a></li>
					<li><a href="#"><i
							class="fa glyphicon glyphicon-unchecked fa-fw"></i> 试卷仓库</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<ul class="nav nav-tabs">
						<li role="presentation" class="active"><a href="#">查看试题</a></li>
						<li role="presentation"><a href="#">增加试题</a></li>
					</ul>
					<h1 class="page-header" style="text-align: center">题库管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" action="${pageContext.request.contextPath }/question/getQues.do" method="get">
						<div class="form-group" style="padding-left: 10px">
							<label for="quesName">试题名称</label>
							<input type="text" class="form-control" id="quesName" value="" name="custName">
						</div>
						<div class="form-group" style="padding-left: 10px">
							<label for="quesSub">试题科目</label>
							<select	class="form-control" id="quesSub" placeholder="试题科目" name="quesSub">
								<option value="">--请选择--</option>

							</select>
						</div>
						<div class="form-group" style="padding-left: 10px">
							<label for="quesCate">试题类型</label>
							<select	class="form-control" id="quesCate"  name="probQues">
								<option value="">--请选择--</option>
							</select>
						</div>
						<div class="form-group" style="padding-left: 10px">
							<label for="category">具体类型</label>
							<select	class="form-control" id="category" name="category">
								<option value="">--请选择--</option>
							</select>
						</div>
						<span style="padding-left: 10px">
							<button type="submit" class="btn btn-primary" >查询</button>
						</span>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">试题信息列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th colspan="2">题干</th>
									<th >答案</th>
                                    <th>来源</th>
									<th>难度系数</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.rows}" var="row">
									<tr>
										<td>${row.cust_id}</td>
										<td>${row.cust_name}</td>
										<td>${row.cust_source}</td>
										<td>${row.cust_industry}</td>
										<td>${row.cust_level}</td>
										<td>${row.cust_mobile}</td>
										<td align="center">
											<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editCustomer(${row.cust_id})">详情</a>
											<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${row.cust_id})">删除</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-md-12 text-right">
							<itcast:page url="${pageContext.request.contextPath }/customer/list.do" />
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- 客户编辑对话框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" style="width: 1040px" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">试题详细信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						<input type="hidden" id="edit_cust_id" name="cust_id"/>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-1 control-label">客户名称</label>
							<div class="col-sm-11">
								<input type="text" class="form-control" id="edit_customerName" placeholder="客户名称" name="cust_name">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom" class="col-sm-1 control-label">客户来源</label>
							<div class="col-sm-11">
								<select	class="form-control" id="edit_customerFrom" placeholder="客户来源" name="cust_source">
									<option value="">--请选择--</option>
									<c:forEach items="${fromType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry" class="col-sm-1 control-label">所属行业</label>
							<div class="col-sm-11">
								<select	class="form-control" id="edit_custIndustry"  name="cust_industry">
									<option value="">--请选择--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>
	
	<script type="text/javascript">
        var json="66";
        //ajax从后台拿到分类
		$(function getData() {
		    var courseName="";
			//1.Ajax获取科目信息信息
			$.ajax({
				async:false,
			    type:"get",
				url:"<%=basePath%>question/getQuesCate.do",
				success:function(data) {
				    json=data;
					for (var i in data) {

                        if (courseName != data[i].course.courseName) {
                            //创建文本节点
                            courseName = data[i].course.courseName;
                            var textSub = document.createTextNode(courseName);
                            //创建option节点
                            var op = document.createElement("option");
                            //修改option的value
                            $(op).val(data[i].course.c_id);
                            $(op).append(textSub);
                            $(op).appendTo("#quesSub");
                        }
                    }}
            });
        });


        $(function () {
            //科目改变触发
                $("#quesSub").change(function (){
                    var quesCate="";
                    //获取值
                    var sub=$("#quesSub option:selected").text();
                    //删除原有节点
                    $("#category option:gt(0)").remove();
                    $("#quesCate option:gt(0)").remove();

					if(sub!=""){
					    var array=new Array();
                        for (var n in json){
                            if(sub==json[n].course.courseName){
                                var qcName=json[n].qcName
                                var textSub = document.createTextNode(qcName);
                                //创建option节点
                                var op = document.createElement("option");
                                //修改option的value
                                $(op).val(json[n].q_id);
                                $(op).append(textSub);
                                $(op).appendTo("#category");
                            }
                            if (quesCate != json[n].probCate.category) {
                                //创建文本节点
                                quesCate = json[n].probCate.category
                                var textSub = document.createTextNode(quesCate);
                                //创建option节点
                                var op = document.createElement("option");
                                //修改option的value
                                $(op).val(json[n].probCate.p_id);
                                $(op).append(textSub);
                                $(op).appendTo("#quesCate");
                            }
                        }
					}


                })


			$(function () {
                //类型改变触发
                $("#quesCate").change(function () {
                    var now=$("#quesCate option").first();
                    if(now!=""){
                        var sub=$("#quesSub option:selected").text();
                        var cate= $("#quesCate option:selected").text();
                        if(sub!=""){
                            //删除原有节点
                            $("#category option:gt(0)").remove();
                            for (var k in json){
                                if(cate==json[k].probCate.category && sub==json[k].course.courseName){
                                    var qcName=json[k].qcName
                                    var textSub = document.createTextNode(qcName);
                                    //创建option节点
                                    var op = document.createElement("option");
                                    //修改option的value
                                    $(op).val(json[k].q_id);
                                    $(op).append(textSub);
                                    $(op).appendTo("#category");
                                }
                            }
                        }
					}
                    else{

					}
                })
            })
        })
	</script>

</body>

</html>
