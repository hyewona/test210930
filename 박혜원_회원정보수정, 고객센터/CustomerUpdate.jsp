<%@page import="portfolio.customer.CustomerBean"%>
<%@page import="portfolio.customer.CustomerDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="customer.js" charset="utf-8"></script>
</head>
<body>
	<%
		String id = (String)session.getAttribute("id");
		CustomerDBBean db = CustomerDBBean.getInstance();
		CustomerBean customer = db.getCustomer(id);
	%>
	<table>
		<form name="reg_frm" method="post" action="CustomerUpdateOk.jsp">
			<tr>
				<td colspan="2" align="center">
						<h1>ȸ�� ���� ����</h1>
				</td>
			</tr>
			<tr height="40">
				<td width="120" align="center">���̵�</td>
				<td><%= customer.getCus_id() %></td>
			</tr>
			<tr height="40">
				<td width="120" align="center">��й�ȣ</td>
				<td><input type="password" size="20" name="cus_pwd"></td>
			</tr>
			<tr height="40">
				<td width="120" align="center">��й�ȣ Ȯ��</td>
				<td><input type="password" size="20" name="pwd_check"></td>
			</tr>
			<tr height="40">
				<td width="120" align="center">�г���</td>
				<td><input type="text" size="20" name="cus_nickname" value="<%= customer.getCus_nickname() %>"></td>
			</tr>
			<tr height="40">
				<td width="120" align="center">�̸���</td>
				<td><input type="text" size="20" name="cus_email" value="<%= customer.getCus_email()%>"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
						<input type="button" value="�����ϱ�" onclick="update_check_ok()">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="����">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>