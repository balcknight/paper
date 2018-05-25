<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
    <head>
        <!-- Bootstrap Core CSS -->
        <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

        <!-- DataTables CSS -->
        <link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">
    </head>
    <body class=text-muted">
    <div class="container">
        <div class="row" style="padding-top: 150px">
            <div class="col-sm-12">
                <p class="text-primary" style="text-align: center;font-size: 25px">智能试卷</p>
            </div>
        </div>
        <c:if test="${!empty error}">
            <font color="red"><c:out value="${error}" /></font>
        </c:if>
        <form action="<%=basePath%>user/loginCheck.do" id="loginForm" method="post">
            <div class="row" >
                <div class="input-group col-sm-12" >
                    <div class=" col-sm-1">
                        <span class="input-group-addon" id="basic-addon1" >用户名</span>
                    </div>
                    <div class="col-sm-2">
                        <input type="text" class="form-control" name="username" placeholder="username" aria-describedby="basic-addon1">
                    </div>

                </div>
            </div>

            <div class="row">
                <div class="input-group col-sm-12">
                    <div class="col-sm-1">
                        <span class="input-group-addon" id="basic-addon2">密码</span>
                    </div>

                    <div class="col-sm-2">
                        <input type="password" class="form-control" name="password" placeholder="password" aria-describedby="basic-addon1">
                    </div>
                </div>

            </div>
            <div class="row" >
                <button type="submit" class="btn btn-default text-center" >提交</button>
            </div>

        </form>
    </div>


        <!-- jQuery -->
        <script src="<%=basePath%>js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="<%=basePath%>js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="<%=basePath%>js/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
        <script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
    </body>
</html>
