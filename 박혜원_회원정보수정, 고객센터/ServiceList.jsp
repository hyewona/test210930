<%@page import="portfolio.serviceAnswer.ServiceAnswerDBBean"%>
<%@page import="portfolio.serviceAnswer.ServiceAnswerBean"%>
<%@page import="portfolio.service.ServiceBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="portfolio.service.ServiceDBBean"%>
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
		int s_id=0;
		String s_name, s_content;
		String id = (String)session.getAttribute("id");
		
		String pageNum = request.getParameter("pageNum");

		if(pageNum == null){
			pageNum="1";
		}
		
		ServiceDBBean db = ServiceDBBean.getInstance();
		
		int countNum = db.countService();//������ ��ü �� ����
		ArrayList<ServiceBean> serviceList = db.listService(pageNum);//������ �� ���
		
		String man_id = db.manidCheck(id);//������ id Ȯ��
		
	%>
	<%
		int s_a_id=0, s_a_ref=0;
		String s_a_name="", s_a_content="";
		ServiceAnswerDBBean a_db = ServiceAnswerDBBean.getInstance();
		ArrayList<ServiceAnswerBean> serviceAnswerList = a_db.listServiceAnswer(pageNum);//������ �亯 �� ���
	%>
		<h2>�� �� �� ��</h2>
		<table width="1000" border="1" cellspacing="0" >
			<tr height="25">
				<td width="40" colspan="3">��ü <%= countNum %>��</td>
				<td width="40">
					<a href="main.jsp">���θ޴�</a>
				</td>
			</tr>
			<%
				for(int i=0; i<serviceList.size(); i++){
					ServiceBean service = serviceList.get(i);
					s_id = service.getS_id();
					s_name = service.getS_name();
					s_content = service.getS_content();
					
					String cus_id = db.cusidCheck(s_name);//����� id Ȯ��
					
			%>
					<tr height="25" bgcolor="#f7f7f7" 
									onmouseover="this.style.backgroundColor='#eeeeef'" 
									onmouseout="this.style.backgroundColor='#f7f7f7'">
						<td align="center" width="50">
							<%= s_id %>
						</td>
						<td align="center" width="600">
							<%= s_content %>
						</td>
						<td align="center" width="50">
							<%= s_name %>
						</td>
							<td width="180">
			<%
						if(db.manidCheck(id).equals(id)){
			%>
								<input type="button" value="�亯" onclick="location.href='ServiceAnswerWrite.jsp?pageNum=<%= pageNum %>&s_id=<%= s_id %>'">
								<input type="button" value="����" onclick="location.href='ServiceEdit.jsp?pageNum=<%= pageNum %>&s_id=<%= s_id %>'">
								<input type="button" value="����" onclick="location.href='ServiceDelete.jsp?pageNum=<%= pageNum %>&s_id=<%= s_id %>'">
			<%
						}
						if(id.equals(cus_id)){
			%>
								<input type="button" value="����" onclick="location.href='ServiceEdit.jsp?pageNum=<%= pageNum %>&s_id=<%= s_id %>'">
								<input type="button" value="����" onclick="location.href='ServiceDelete.jsp?pageNum=<%= pageNum %>&s_id=<%= s_id %>'">
			<%
						}
			%>					
							</td>
					</tr>
			<%
						for(int j=0; j<serviceAnswerList.size(); j++){
							ServiceAnswerBean serviceAnswer = serviceAnswerList.get(j);
							s_a_id = serviceAnswer.getS_a_id();
							s_a_ref = serviceAnswer.getS_a_ref();
							s_a_name = serviceAnswer.getS_a_name();
							s_a_content = serviceAnswer.getS_a_content();
							
							if(s_id == s_a_id){
			%>
								<tr height="25" >
									<td align="center" width="600" colspan="2">
										<%= s_a_content %>
									</td>
									<td align="center">
										<%= s_a_name %>
									</td>
			<%
								if(db.manidCheck(id).equals(id)){
			%>
									<td>
										<input type="button" value="����" onclick="location.href='ServiceAnswerEdit.jsp?pageNum=<%= pageNum %>&s_id=<%= s_id %>'">
										<input type="button" value="����" onclick="location.href='ServiceAnswerDelete.jsp?pageNum=<%= pageNum %>&s_id=<%= s_id %>'">
									</td>
			<%
								}
			%>
								</tr>
			<%
							}
						}
					}
			
			%>
					<tr>
						<td align="right" colspan="4">
							<a href="ServiceWrite.jsp?pageNum=<%= pageNum %>">�� �� ��</a>
						</td>
					</tr>
		</table>
		<%= ServiceBean.pageNumer(5) %>
</body>
</html>