<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript">
$(document).ready(function() {
	$('.deleteNewsPostBtn').on('click', function() {
		var news_id = $(this).next().val();
		$('#deleteNewsPostModal #newsId').val(news_id);	
	});
});

</script>
<style>
.mybtn{
margin-bottom: 10px;
}
.mysplit{
	margin-left: 5px;
}
</style>


<div class="row-fluid custom round">
	<div  class="row" >
		<h4>信息分享</h4>
	</div>
	<div class="content">
		<div style="text-align: right;">
			<a href='<c:url value="/admin/sharinginfo/new"></c:url>' class="btn btn-primary pull-right mybtn">
				添加信息</a><br>
			<table class="table table-bordered table-hover"  cellpadding="5" width=100%  border=0>
				<thead><tr>
						<th  align="center" width="150">图片</th>
						<th align="center" >
							标题
						</th>
						<th   align="center" width="150">发布时间</th>
						<th  align="center" width="120">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${page.content}" var="page">
						<tr>
							<td align="center" ><img src="<c:url value='${page.picPath}'></c:url>" style="width: 140px; border: 1px #ccc dashed ;"></td>
							<td align="left" >${page.title}</td>
							<td align="center">${page.postDate}</td>
							<td align="center">
								 <a class="deleteNewsPostBtn btn btn-info" href="#deleteNewsPostModal" role="button" data-toggle="modal" data-target="#deleteNewsPostModal">删除</a><input type="hidden" value="${page.id} ">   
								 <a class="btn btn-info" href='<c:url value="/admin/sharinginfo/edit/${page.id}"></c:url>'>修改</a>
						
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="content"><jsp:include page="/WEB-INF/views/_shared/pagination.jsp"></jsp:include></div>
	
		</div>
	</div>	
</div>

<!-- delete annoForm -->
<div class="modal hide fade" id="deleteNewsPostModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel">请注意</h3>
	  </div>
	  <div class="modal-body">
	    <p>你确定删除该内容吗？</p>
	  </div>
	  <div class="modal-footer">
	    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
	    <form action='<c:url value="/admin/sharinginfo/destory"></c:url>' method="post" style="display: inline-block;" >
	    	<input id="newsId" type="hidden" name="id" />
	    	<button class="btn btn-success">确定</button>
	    </form>
	  </div>
</div>