<%@page import="portfolio.serviceAnswer.ServiceAnswerDBBean"%>
<%@page import="portfolio.serviceAnswer.ServiceAnswerBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String pageNum = request.getParameter("pageNum");
		int s_a_id = Integer.parseInt(request.getParameter("s_id")); 
	%>
	<h2>��ȣ�� �Է��ϼ���.</h2>
	<form method="post" action="ServiceAnswerDeleteOk.jsp?pageNum=<%= pageNum %>&s_a_id=<%= s_a_id %>">
		<table>
			<tr>
				<td>�� ȣ</td>
				<td>
					<input type="password" name="man_pwd">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="�����ϱ�">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>