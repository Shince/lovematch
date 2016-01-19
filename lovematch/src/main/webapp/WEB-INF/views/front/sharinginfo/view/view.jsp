<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<style>
a[class='date-filter']:hover{color:#ff6920;border-bottom: 2px solid #ccc;padding-bottom: 5px;}
</style>

<div class="row-fluid   container_div">
	<div class="row-fluid date-div"> <a class="date-filter date-active" href="#">信息分享</a></div>
	<div class="row-fluid">
		<center><h4>${sharingInfo.title }</h4></center>
		<span class="content-date">发布时间:${sharingInfo.postDate}</span>
		<hr>
		<center><img src="<c:url value='${sharingInfo.picPath }'></c:url>" ></center>
		<br>
		${sharingInfo.content }
	</div>
</div>

