<%@page import="portfolio.customer.CustomerBean"%>
<%@page import="portfolio.customer.CustomerDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>��й�ȣ�� �Է��ϼ���.</h2>
	<form method="post" action="CustomerInfoCheckOk.jsp">
		<table>
			<tr>
				<td>��й�ȣ</td>
				<td>
					<input type="password" name="cus_pwd">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Ȯ��">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>