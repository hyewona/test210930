<%@page import="portfolio.customer.CustomerBean"%>
<%@page import="portfolio.customer.CustomerDBBean"%>
<%@page import="myUtil.HanConv"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	if(session.getAttribute("Member") == null){ 
		response.sendRedirect("login.jsp");
	}
%>    
<%
	String id = (String)session.getAttribute("id");
	String name = (String)session.getAttribute("nickname");		
	
	CustomerDBBean db = CustomerDBBean.getInstance();
	CustomerBean customer = db.getCustomer(id);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<form method="post" action="logOut.jsp">
			<tr>
				<td>
					 �ȳ��ϼ���.<%= name %> (<%= id %>)�� 
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="�α׾ƿ�">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<%
						if(customer != null){
					%>
						<input type="button" value="ȸ������ ��ȸ" onclick="javascript:window.location='CustomerInfo.jsp'">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;					
					<%
						}
					%>
					<input type="button" value="������" onclick="javascript:window.location='ServiceList.jsp'">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>