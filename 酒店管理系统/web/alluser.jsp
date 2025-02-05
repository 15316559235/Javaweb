﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>As Home</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edmin</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
        rel='stylesheet'>
</head>
<body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="admin.do">主页 </a>
                        <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav nav-icons">
                            <li class="active"><a href="#"><i class="icon-envelope"></i></a></li>
                            <li><a href="#"><i class="icon-eye-open"></i></a></li>
                            <li><a href="#"><i class="icon-bar-chart"></i></a></li>
                        </ul>
                            <ul class="nav pull-right">

                                <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="images/user.png" class="nav-avatar" />
                                    <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="message.do">留言板</a></li>
                                        <li><a href="task.do">订单</a></li>
                                        <li><a href="form.jsp">注册管理</a></li>
                                        <li><a href="alluser.do">当前所有用户 </a></li>
                                        <li class="divider"></li>
                                        <li><a href="index.jsp">退出</a></li>
                                    </ul>
                                </li>
                            </ul>
                    </div>
                    <!-- /.nav-collapse -->
                </div>
            </div>
            <!-- /navbar-inner -->
        </div>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
						   <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="admin.do"><i class="menu-icon icon-dashboard"></i>住客信息
                                </a></li>
                                
                                <li><a href="message.do"><i class="menu-icon icon-inbox"></i>留言板 </a></li>
                                <li><a href="task.do"><i class="menu-icon icon-tasks"></i>订单 </a></li>
                            </ul>
                            <!--/.widget-nav-->
                            
                            
                            <ul class="widget widget-menu unstyled">
                          
                                <li><a href="form.jsp"><i class="menu-icon icon-paste"></i>注册管理 </a></li>
                                <li><a href="alluser.do"><i class="icon-inbox"></i>当前所有用户 </a></li>
                            </ul>
                            <!--/.widget-nav-->
                            <ul class="widget widget-menu unstyled">
                                <li><a href="index.jsp"><i class="menu-icon icon-signout"></i>退出 </a></li>
                            </ul>
                        </div>
                        <!--/.sidebar-->
                    </div>
                    <!--/.span3-->

                    <div class="span9">
                        <div class="content">
                            <div class="module message">
                                <div class="module-head">
                                    <h3>所有用户</h3>
                                </div>
                                <div class="module-body table">
                                    <table class="table table-message">
                                        <thead>
                                    <tr>
                                        <th>用户名                                                </th>
                                        <th>姓名                                                  </th>
                                        <th>身份证号                                             </th>
                                        <th>联系方式                                               </th>
                                        <th>账户类型                                                </th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach var="list" items="${requestScope.Userbeanlist}"  varStatus="status">
                                    <tr>
                                        <td>${list.getCid()}</td>
                                        <td>${list.getCname()}</td>
                                        <td>${list.getCnum()}</td>
                                        <td>${list.getCtel()}</td>
                                        <td>${list.getCtype()}</td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                    </table>
                            </div>
                        </div>
            </div>
        </div>
        <!--/.container-->
    </div>
    <!--/.wrapper-->
    <div class="footer">
        <div class="container">

        </div>
    </div>
    <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
</body>
