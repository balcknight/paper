<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="zr" uri="http://zr/common/" %>
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
					<form class="form-inline" action="${pageContext.request.contextPath }/question/list.do" method="get">
						<div class="form-group" style="padding-left: 10px">
							<label for="quesName">试题名称</label>
							<input type="text" class="form-control" id="quesName" value="${quesName}" name="quesName">
						</div>
						<div class="form-group" style="padding-left: 10px">
							<label for="quesSub">试题科目</label>
							<select	class="form-control" id="quesSub" placeholder="试题科目" name="quesSub">
								<option value="">--请选择--</option>
								<c:forEach items="${courseList}" var="course">
									<option value="${course.c_id}" ${course.c_id==quesSub ? 'selected':''}>${course.courseName}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group" style="padding-left: 10px">
							<label for="quesCate">试题类型</label>
							<select	class="form-control" id="quesCate"  name="probQues">
								<option value="">--请选择--</option>
								<c:forEach items="${cateList}" var="cate">
									<option value="${cate.p_id}" ${cate.p_id==probQues ? 'selected':''}>${cate.category}</option>
								</c:forEach>
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
										<td>${row.id}</td>
										<td colspan="2">${row.title}</td>
										<td>${row.answer}</td>
										<td>${row.description}</td>
										<td>${row.difficultyLevel}</td>

										<td align="center">
											<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick=editQues("${row.p_id}","${row.id}")>详情</a>
											<a href="#" class="btn btn-danger btn-xs" onclick=deleteQues("${row.p_id}","${row.id}")>删除</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-md-12 text-right">
							<zr:page url="${pageContext.request.contextPath }/question/list.do" />
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

	<!-- 试题编辑对话框 -->
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
					<form class="form-horizontal" id="edit_question_form">
						<input type="hidden" id="edit_ques_id" name="id"/>
						<div class="form-group">
							<label for="edit_title" class="col-sm-1 control-label">试题名称</label>
							<div class="col-sm-11">
								<input type="text" class="form-control" id="edit_title" placeholder="试题名称" name="title">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_courseName" class="col-sm-1 control-label">科目</label>
							<div class="col-sm-11">
								<select	class="form-control" id="edit_courseName" placeholder="科目" name="course.c_id">
									<c:forEach items="${courseList}" var="course">
										<option value="${course.c_id}" ${course.c_id==quesSub ? 'selected':''}>${course.courseName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_category" class="col-sm-1 control-label">题目类型</label>
							<div class="col-sm-11">
								<select	class="form-control" id="edit_category"  name="probCate.p_id">
									<c:forEach items="${cateList}" var="cate">
										<option value="${cate.p_id}" ${cate.p_id==probQues ? 'selected':''}>${cate.category}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_qcName" class="col-sm-1 control-label">具体类型</label>
							<div class="col-sm-11">
								<select	class="form-control" id="edit_qcName"  name="quesCate.q_id">

								</select>
							</div>
						</div>
                        <div class="form-group">
                            <label for="edit_knowledge" class="col-sm-1 control-label">知识点</label>
                            <div class="col-sm-11">
                                <input type="text" class="form-control" id="edit_knowledge" placeholder="知识点" name="knowledge.knowledgeName">
                            </div>
                        </div>
						<div class="form-group">
							<label for="edit_difficultyLevel" class="col-sm-1 control-label">难度系数</label>
							<div class="col-sm-11">
                                <input type="text" class="form-control" id="edit_difficultyLevel" placeholder="难度系数" name="difficultyLevel">
							</div>
						</div>
                        <div class="form-group" id="edit_blankNumDiv" style="display:none">
                            <label for="edit_blankNum" class="col-sm-1 control-label">空的个数</label>
                            <div class="col-sm-11">
                                <input type="text" class="form-control" id="edit_blankNum" placeholder="空的个数" name="blankNum">
                            </div>
                        </div>
						<div class="form-group">
							<label for="edit_answer" class="col-sm-1 control-label">答案</label>
							<div class="col-sm-11">
                                <input type="text" class="form-control" id="edit_answer" placeholder="答案" name="answer">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_description" class="col-sm-1 control-label">试题来源</label>
							<div class="col-sm-11">
                                <input type="text" class="form-control" id="edit_description" placeholder="试题来源" name="description">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="updateQuestion()">保存修改</button>
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


			$(function () {
                //科目发生改变
                $("#quesSub").change(function () {
                    var sub=$("#quesSub option:selected").val();
                    var probCate=$("#quesCate option:selected").val();
                    $("#category option:gt(0)").remove();
                   $.ajax({
                       type:"get",
                       url:"<%=basePath%>question/getQuesCate.do",
                       data:
						   {
						       "quesSub":sub,
							   "probQues":probCate
						   },
                       success:function(data) {
                           for (var i in data){
                               //创建文本节点
                               var quesCate = data[i].qcName
                               var textSub = document.createTextNode(quesCate);
                               //创建option节点
                               var op = document.createElement("option");
                               //修改option的value
                               $(op).val(data[i].q_id);
                               $(op).append(textSub);
                               $(op).appendTo("#category");
						   }
                       }
				   });
				})
			})

            $(function () {
                //弹出层科目发生改变
                $("#edit_courseName").change(function () {
                    var sub=$("#edit_courseName option:selected").val();
                    var probCate=$("#edit_category option:selected").val();
                    $("#edit_qcName option").remove();
                    $.ajax({
                        type:"get",
                        url:"<%=basePath%>question/getQuesCate.do",
                        data:
                            {
                                "quesSub":sub,
                                "probQues":probCate
                            },
                        success:function(data) {
                            for (var i in data){
                                //创建文本节点
                                var quesCate = data[i].qcName
                                var textSub = document.createTextNode(quesCate);
                                //创建option节点
                                var op = document.createElement("option");
                                //修改option的value
                                $(op).val(data[i].q_id);
                                $(op).append(textSub);
                                $(op).appendTo("#edit_qcName");
                            }
                        }
                    });
                })
            })

            $(function () {
                //题目类型发生改变
                $("#quesCate").change(function () {
                    var sub=$("#quesSub option:selected").val();
                    var probCate=$("#quesCate option:selected").val();
                    $("#category option:gt(0)").remove();
                    $.ajax({
                        type:"get",
                        url:"<%=basePath%>question/getQuesCate.do",
                        data:
                        //"{quesSub:'"+sub+"',probQues:'"+probCate+"'}",
                        //data:{"quesSub":sub},
                            {
                                "quesSub":sub,
                                "probQues":probCate
                            },
                        success:function(data) {
                            for (var i in data){
                                //创建文本节点
                                var quesCate = data[i].qcName
                                var textSub = document.createTextNode(quesCate);
                                //创建option节点
                                var op = document.createElement("option");
                                //修改option的value
                                $(op).val(data[i].q_id);
                                $(op).append(textSub);
                                $(op).appendTo("#category");
                            }
                        }
                    });
                })
            })


            $(function () {
                //弹出层题目类型发生改变
                $("#edit_category").change(function () {
                    var sub=$("#edit_courseName option:selected").val();
                    var probCate=$("#edit_category option:selected").val();
                    $("#edit_qcName option").remove();
                    $.ajax({
                        type:"get",
                        url:"<%=basePath%>question/getQuesCate.do",
                        data:
                        //"{quesSub:'"+sub+"',probQues:'"+probCate+"'}",
                        //data:{"quesSub":sub},
                            {
                                "quesSub":sub,
                                "probQues":probCate
                            },
                        success:function(data) {
                            for (var i in data){
                                //创建文本节点
                                var quesCate = data[i].qcName
                                var textSub = document.createTextNode(quesCate);
                                //创建option节点
                                var op = document.createElement("option");
                                //修改option的value
                                $(op).val(data[i].q_id);
                                $(op).append(textSub);
                                $(op).appendTo("#edit_qcName");
                            }
                        }
                    });
                })
            })

			//删除试题
            function deleteQues(p_id,id) {
                if(confirm('确实要删除该题目吗?')) {
                    $.post("<%=basePath%>question/deleteQues.do",{"p_id":p_id,"id":id},function(data){
                        alert("试题删除更新成功！");
                        window.location.reload();
                    });
                }
            }

		//ajax获取试题信息
        function editQues(p_id,id) {
            $("#edit_blankNumDiv").hide();
            $.ajax({
                type:"get",
                url:"<%=basePath%>question/editQuesInfo.do",
                data:{"p_id":p_id,"id":id},
                success:function(data) {
                    if(data.probCate.p_id=="1"){
                        $("#edit_title").val(data.title);
                        $("#edit_courseName").val(data.course.c_id);
                        $("#edit_category").val(data.probCate.p_id);
                        $("#edit_qcName ").val(data.quesCate.q_id);
                        $("#edit_knowledge").val(data.knowledge.knowledgeName);
                        $("#edit_difficultyLevel").val(data.difficultyLevel);
                        $("#edit_answer").val(data.answer);
                        $("#edit_description").val(data.description);
                    }
                    if(data.probCate.p_id=="2"){
                        $("#edit_blankNum").val(data.blankNum);
                        $("#edit_blankNumDiv").show();
                        $("#edit_title").val(data.title);
                        $("#edit_courseName").val(data.course.c_id);
                        $("#edit_category").val(data.probCate.p_id);
                        $("#edit_qcName ").val(data.quesCate.q_id);
                        $("#edit_knowledge").val(data.knowledge.knowledgeName);
                        $("#edit_difficultyLevel").val(data.difficultyLevel);
                        $("#edit_answer").val(data.answer);
                        $("#edit_description").val(data.description);
                    }
                    if(data.probCate.p_id=="3"){
                        $("#edit_title").val(data.title);
                        $("#edit_courseName").val(data.course.c_id);
                        $("#edit_category").val(data.probCate.p_id);
                        $("#edit_qcName ").val(data.quesCate.q_id);
                        $("#edit_knowledge").val(data.knowledge.knowledgeName);
                        $("#edit_difficultyLevel").val(data.difficultyLevel);
                        $("#edit_answer").val(data.answer);
                        $("#edit_description").val(data.description);
                    }
                    if(data.probCate.p_id=="4"){
                        $("#edit_title").val(data.title);
                        $("#edit_courseName").val(data.course.c_id);
                        $("#edit_category").val(data.probCate.p_id);
                        $("#edit_qcName ").val(data.quesCate.q_id);
                        $("#edit_knowledge").val(data.knowledge.knowledgeName);
                        $("#edit_difficultyLevel").val(data.difficultyLevel);
                        $("#edit_answer").val(data.answer);
                        $("#edit_description").val(data.description);
                    }
                }
            });
        }

        	//跟新试题
            function updateQuestion() {
                $.post("<%=basePath%>question/updateQuestion.do",$("#edit_question_form").serialize(),function(data){
                    alert("试题信息更新成功！");
                    window.location.reload();
                });
            }
	</script>

</body>

</html>
