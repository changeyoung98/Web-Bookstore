<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<nav class="navbar navbar-fixed-top bg-info" >
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="javascript:void(0)">Bookstore Managing System</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="<s:url value="/admin/books"/>"><span class="glyphicon glyphicon-book"></span> Book Management</a></li>
                <li><a href="<s:url value="/admin/categories"/>"><span class="glyphicon glyphicon-folder-open"></span> Category Management</a></li>
                <li><a href="<s:url value="/admin/users"/>"><span class="glyphicon glyphicon-user"></span> User Management</a></li>
                <li><a href="<s:url value="/admin/orders"/>"><span class="glyphicon glyphicon-list-alt"></span> Order Query</a></li>
                <li><a href="<s:url value="/admin/stat"/>"><span class="glyphicon glyphicon-check"></span> Sales Statistics</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img class="navbar-avatar" id="myNavbarAvatar" src="${requestScope.avatar}"> <span id="myNavbarNickname">${requestScope.nickname}</span> <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="<s:url value="/home"/>"><span class="glyphicon glyphicon-home"></span> Back to home page</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#" data-toggle="modal" data-target="#myProfileDialog"><span class="glyphicon glyphicon-user"></span> Self-info Management</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="<s:url value="/logout"/>"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<input type="hidden" id="isLoggedIn" value="1">
<input type="hidden" id="currentUserId" value="<%= request.getAttribute("currentUserId") %>">