<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="basedefinition">
	<tiles:putAttribute name="content">
		<div class="col-md-9" role="main">
		<h1>Welcome</h1>
		<c:if test="${message!=null}">${message}</c:if> 
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
