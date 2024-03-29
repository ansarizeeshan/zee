<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
</head>
<body>
<nav class="navbar navbar-default" role="navigation" style="border-radius: 0px;">
                  <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand" href="${contextPath}">Menu 2048</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                      <ul class="nav navbar-nav">
                        <li class="active"><a href="${contextPath}/inventories">Inventories</a></li>
                        <!-- <li class="disabled"><a href="#">Link</a></li> -->
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                          <ul class="dropdown-menu" role="menu">
                            <li class="dropdown-header">Setting</li>
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li class="active"><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li class="disabled"><a href="#">One more separated link</a></li>
                          </ul>
                        </li>
                      </ul>
                      <form class="navbar-form navbar-right" role="search">
                        <div class="form-search search-only">
                          <i class="search-icon glyphicon glyphicon-search"></i>
                          <input type="text" class="form-control search-query">
                        </div>
                      </form>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container-fluid -->
                </nav>