<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AminAnswer.jsp</title>
<link rel="stylesheet" href="<%=cp %>/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	
	<div class="panel-group">
		<div class="panel-default">
		
			<div class="panel-heading" id="title" style="font-weight: bold;">
				일대일문의
			</div>
			
			<div class="panel-body">
				<form role="form" action="" method="post">
					
					<input type="hidden" id="mid" name="mid">
					
					<table style="width: 100%;">
						<tr>
							<th>[일정]</th>
							<th>문의드립니다.</th>
							<th>어쩌고유저</th>
							<th>2021-07-01</th>
							<th><button type="button" disabled="disabled" style="background: gray; color: white; width: 50pt; border: 1px;">미처리</button></th>
						</tr>
					</table>
					<br><br>
					
						<table style="width: 100%; border: 1px solid  #000;">
							<tr>
								<td>		
									어쩌고 저쩌고 님 이거 완성할 맘은 있는 편?
									프젝 안에 가능?
								</td>
							</tr>
						</table>
					<br><br>
					<textarea style="width: 100%">
					</textarea>
					
					<div style="text-align: center;">
					<button type="submit" class="btn btn-success btn-sm" style="background-color: #2E9AFE; border: 1px;">처리</button>
					<button type="button" class="btn btn-success btn-sm btnCancel" id="closebtn" style="background-color: #6c757d; border: 1px;">취소</button>
					</div>
					
				</form>
			</div>
		</div><!-- close .panel-default -->
	</div>
</div>

</body>
</html>