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
		String cus_pwd = request.getParameter("cus_pwd");
		CustomerDBBean db = CustomerDBBean.getInstance();
		/*������ ���̵�� ��ġ�ϴ� �� ������ ������*/
		CustomerBean customer = db.getCustomer(id);
		
		if(customer.getCus_pwd().equals(cus_pwd)){
	%>
			<script type="text/javascript">
				document.location.href="CustomerUpdate.jsp";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				history.go(-1);
			</script>
	<%		
		}
		
	%>
</body>
</html>