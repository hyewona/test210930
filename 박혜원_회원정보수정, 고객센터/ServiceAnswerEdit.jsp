<%@page import="portfolio.serviceAnswer.ServiceAnswerBean"%>
<%@page import="portfolio.serviceAnswer.ServiceAnswerDBBean"%>
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

	String pageNum = request.getParameter("pageNum");
	String name = (String)session.getAttribute("nickname");
	int s_a_id = Integer.parseInt(request.getParameter("s_id"));
	
	int s_a_ref=0;
	String s_a_name="", s_a_content="";
	
	ServiceAnswerDBBean db = ServiceAnswerDBBean.getInstance();
	ServiceAnswerBean service_answer = db.getServiceAnswer(s_a_id);
	s_a_ref = service_answer.getS_a_ref();
	s_a_name = name;
	s_a_content = service_answer.getS_a_content();
	
%>
	<form name="form2" method="post" action="ServiceAnswerEditOk.jsp?pageNum=<%= pageNum %>">
		<input type="hidden" name="s_a_id" value="<%= s_a_id %>">
		<input type="hidden" name="s_a_ref" value="<%= s_a_ref %>">
		<input type="hidden" name="s_a_name" value="<%= s_a_name %>">
		<table>
			<tr>
				<td><h2>������ �亯 ����</h2></td>
			</tr>
			<tr>
				<td>
					<textarea rows="20" cols="80" name="s_a_content"><%= s_a_content %></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="�����ϱ�" onclick="check_ok2()">
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