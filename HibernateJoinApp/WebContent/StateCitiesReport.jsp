<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hibernate.entities.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>State Cities Report using Join</h2>

<table cellspacing="0" cellpadding="5" border="1">

<tr>
	<th>State Id</th>
	<th>State Name</th>
	<th>City Id</th>
	<th>City Name</th>
</tr>

<%
	try
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session ses=sf.openSession();
		ses.beginTransaction();
		
		Query qr=ses.createQuery("from Cities c join c.state");
		
		List<Object[]> lst=qr.list();
		
		for(Object[] row : lst)
		{
			Cities ct=(Cities) row[0];
			Statemaster st=(Statemaster) row[1];
			%>
			
			<tr>
				<td><%=st.getStateid()%></td>
				<td><%=st.getStatename()%></td>
				<td><%=ct.getCityid() %></td>
				<td><%=ct.getCityname() %></td>
			</tr>
			
			<%
		}
		
		ses.close();
	}
	catch(Exception ex)
	{
		out.println("Error : "+ex);
	}


%>



</table>

</body>
</html>