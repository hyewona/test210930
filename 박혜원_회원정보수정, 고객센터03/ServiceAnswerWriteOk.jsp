<%@page import="portfolio.serviceAnswer.ServiceAnswerBean"%>
<%@page import="portfolio.serviceAnswer.ServiceAnswerDBBean"%>
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
		ServiceAnswerDBBean a_db = ServiceAnswerDBBean.getInstance();
		ServiceAnswerBean ServiceAnswer = new ServiceAnswerBean();
		int re = 0;
		if(request.getParameter("s_a_id") != null){
			ServiceAnswer.setS_a_id(Integer.parseInt(request.getParameter("s_a_id")));
			ServiceAnswer.setS_a_ref(Integer.parseInt(request.getParameter("s_a_ref")));
			ServiceAnswer.setS_a_content(request.getParameter("s_a_content"));
			ServiceAnswer.setS_a_name(request.getParameter("s_a_name"));
			
			re = a_db.insertServiceAnswer(ServiceAnswer);
		}
		
		if(re == 1){
	%>
			<script type="text/javascript">
				alert("�����Ϳ� �� ���� ��ϵǾ����ϴ�.");
				document.location.href="ServiceList.jsp";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("�� �� ��Ͽ� �����߽��ϴ�.");
				history.go(-1);
			</script>
	<%		
		}
	%>
</body>
</html>