<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="service.js" charset="utf-8"></script>
</head>
<body>
<%	
	String name = (String)session.getAttribute("nickname");
	int s_id=0;
	String s_name="", s_content;
	
	s_name = name;
%>
	<form name="form" method="post" action="ServiceWriteOk.jsp">
		<input type="hidden" name="s_id" value="<%= s_id %>">
		<input type="hidden" name="s_name" value="<%= s_name %>">
		<table>
			<tr>
				<td><h2>������ �۾���</h2></td>
			</tr>
			<tr>
				<td>
					<textarea rows="20" cols="80" name="s_content"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="�۾���" onclick="check_ok()">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="�ٽ� ����">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="�۸��" onclick="location.href='ServiceList.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>