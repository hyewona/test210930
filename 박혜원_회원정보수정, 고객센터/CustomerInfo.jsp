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
	<%
		String id = (String)session.getAttribute("id"); 
		CustomerDBBean db = CustomerDBBean.getInstance();
		/*������ ���̵�� ��ġ�ϴ� �� ������ ������*/
		CustomerBean customer = db.getCustomer(id);
	%>
	<table>
		<form name="reg_frm" method="post" action="CustomerInfoCheck.jsp">
			<tr>
				<td colspan="2" align="center">
						<h1>ȸ�� ����</h1>
				</td>
			</tr>
			<tr height="40">
				<td width="120" align="center">���̵�</td>
				<td><%= customer.getCus_id() %></td>
			</tr>
			<tr height="40">
				<td width="120" align="center">�г���</td>
				<td><%= customer.getCus_nickname() %></td>
			</tr>
			<tr height="40">
				<td width="120" align="center">�̸���</td>
				<td><%= customer.getCus_email()%></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
						<input type="submit" value="�����ϱ�">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>