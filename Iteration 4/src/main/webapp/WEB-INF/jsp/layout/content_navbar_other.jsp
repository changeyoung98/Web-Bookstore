<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<nav class="navbar navbar-fixed-top bg-info" id="header">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="<s:url value="/home"/>">Daisy's Bookstore</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<s:url value="/cart"/>"><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart <span class="badge badge-cart" id="cartCount"></span></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img class="navbar-avatar" id="myNavbarAvatar" src="${requestScope.avatar}"> <span id="myNavbarNickname">${requestScope.nickname}</span> <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <c:if test="${requestScope.role > 0}">
                            <li><a href="<s:url value="/admin/books"/>"><span class="glyphicon glyphicon-wrench"></span> Managing System</a></li>
                            <li role="separator" class="divider"></li>
                        </c:if>
                        <li><a href="<s:url value="/home"/>"><span class="glyphicon glyphicon-home"></span> Back to home page</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="<s:url value="/orders"/>"><span class="glyphicon glyphicon-list-alt"></span> My Order History</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#" data-toggle="modal" data-target="#myProfileDialog"><span class="glyphicon glyphicon-user"></span> Self-info Management</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#myAddressDialog"><span class="glyphicon glyphicon-send"></span> Delivery Address Management</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="<s:url value="/logout"/>"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<input type="hidden" id="isLoggedIn" value="1">