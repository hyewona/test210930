<%@page import="portfolio.customer.CustomerBean"%>
<%@page import="portfolio.customer.CustomerDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<%
		String id = request.getParameter("cus_id");
		String pwd = request.getParameter("cus_pwd");
		CustomerDBBean db = CustomerDBBean.getInstance();
		
		int check2 = db.manCheck(id, pwd);
		CustomerBean manager = db.getManager(id);

		int check = db.userCheck(id , pwd);
		CustomerBean customer = db.getCustomer(id);
		
		/*������ ���� �α���*/
		if(manager == null){
	%>
			<script type="text/javascript">
				alert("�������� �ʴ� ȸ��");
				history.go(-1);
			</script>
	<%
		}else{
			String name = manager.getMan_name();
			if(check2 == 1){
				session.setAttribute("id", id);
				session.setAttribute("nickname", name);
				session.setAttribute("Member", "yes");
				response.sendRedirect("main.jsp");
			}else if(check2 == 0){
	%>
			<script type="text/javascript">
				alert("��й�ȣ�� ���� �ʽ��ϴ�.");
				history.go(-1);
			</script>
	<%
			}else{ 
	%>
			<script type="text/javascript">
				alert("���̵� ���� �ʽ��ϴ�.");
				history.go(-1);
			</script>
	<%
			}
		}
	

		/*����� ���� �α���*/
		if(customer == null){
	%>
			<script type="text/javascript">
				alert("�������� �ʴ� ȸ��");
				history.go(-1);
			</script>
	<%
		}else{
			String name = customer.getCus_nickname();
			if(check == 1){
				session.setAttribute("id", id);
				session.setAttribute("nickname", name);
				session.setAttribute("Member", "yes"); //������������ ����ڰ� �ٷ� main.jsp�� ���°� �����ϱ� ���ؼ�
				response.sendRedirect("main.jsp");
			}else if(check == 0){
	%>
			<script type="text/javascript">
				alert("��й�ȣ�� ���� �ʽ��ϴ�.");
				history.go(-1);
			</script>
	<%
			}else{ 
	%>
			<script type="text/javascript">
				alert("���̵� ���� �ʽ��ϴ�.");
				history.go(-1);
			</script>
	<%
			}
		}
	%>
