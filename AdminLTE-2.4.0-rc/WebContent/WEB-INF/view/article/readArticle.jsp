<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/view/include/header.jspf"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			회원제 게시판 <small>it all starts here</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Examples</a></li>
			<li class="active">Blank page</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">

		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">
				${articleData.article.number}. <c:out value='${articleData.article.title}' />
				</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool"
						data-widget="collapse" data-toggle="tooltip" title="Collapse">
						<i class="fa fa-minus"></i>
					</button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"
						data-toggle="tooltip" title="Remove">
						<i class="fa fa-times"></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<div><u:pre value='${articleData.content}'/></div>
				<br/>작성자 : ${articleData.article.writer.name}
				
			</div>
			<!-- /.box-body -->
			<div class="box-footer">
				<c:set var="pageNo" value="${empty param.pageNo ? '1' : param.pageNo}" />
				<a href="list.do?pageNo=${pageNo}">[목록]</a>
				<c:if test="${authUser.id == articleData.article.writer.id}">
				<a href="modify.do?no=${articleData.article.number}">[게시글수정]</a>
				<a href="delete.do?no=${articleData.article.number}">[게시글삭제]</a>
				</c:if>
			</div>
			<!-- /.box-footer-->
		</div>
		<!-- /.box -->

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@ include file="../include/footer.jspf"%>
