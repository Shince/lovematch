<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>


	
.mytab{
	border: 1px solid #ccc; 
	margin:10px 0px 10px 0px;
}


</style>
<div class="row-fluid " >
	<div  class="bg_white boxshadow sec_container" style="">
		<div class="sec_titles">
			<div class="sec_titles_sub ">
				${webInfoType }
			</div>
		</div>
		<div class="sec_cont ">
			<div class="sec_cont wordbreak">
				<h4>${cont.title }</h4>
				<span>发布于：<fmt:formatDate value="${cont.date}" pattern="yyyy-MM-dd HH:mm" /></span>
				<hr>
				${cont.content }
				<hr>	
			</div>
		</div>
	</div>
</div>