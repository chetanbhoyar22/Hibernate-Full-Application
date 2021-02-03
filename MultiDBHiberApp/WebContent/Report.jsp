<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="hibernate.multidb.entities.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>BankingDB : Celebs Info</h2>

<table cellspacing="0" cellpadding="5" border="1">
	<tr>
	<th>Celeb No</th>
	<th>Name</th>
	<th>Field</th>
	<th>Country</th>
	</tr>	
	<%
	try
	{
		Session ses;
		Configuration cfg=new Configuration().configure("/hibernate-trans.cfg.xml");
		SessionFactory sf=cfg.addAnnotatedClass(Celebs.class).buildSessionFactory();
		
		ses=sf.getCurrentSession();
		ses.beginTransaction();
		
		Query qr=ses.createQuery("From Celebs");
		List lst=qr.getResultList();
		
		for(int i=0;i<lst.size();i++)
		{
			Celebs c=(Celebs)lst.get(i);
		
		%>
			<tr>
				<td><%=c.getCelebno() %></td>
				<td><%=c.getCelebnm() %></td>
				<td><%=c.getField() %></td>
				<td><%=c.getCountry() %></td>
			</tr>
		<%}
		
		
		ses.close();
	}
	catch(Exception ex){}	
	%>	
</table>

<br/><hr/><br/>

<h2>Chetan : Shows Info</h2>

<table cellspacing="0" cellpadding="5" border="1">
	<tr>
	<th>Show Name</th>
	<th>Release Year</th>
	<th>Category</th>	
	<th>Language</th>
	<th>Actor</th>
	</tr>	
	<%
	try
	{
		Session ses;
		Configuration cfg=new Configuration().configure("/hibernate-shows.cfg.xml");
		SessionFactory sf=cfg.addAnnotatedClass(Shows.class).buildSessionFactory();
		
		ses=sf.getCurrentSession();
		ses.beginTransaction();
		
		Query qr=ses.createQuery("From Shows");
		List lst=qr.getResultList();
		
		for(int i=0;i<lst.size();i++)
		{
			Shows s=(Shows)lst.get(i);
		%>
			<tr>
				<td><%=s.getShownm() %></td>
				<td><%=s.getRelyr() %></td>
				<td><%=s.getCategory() %></td>
				<td><%=s.getLanguage() %></td>
				<td><%=s.getActor() %></td>
			</tr>
		
		<%	
		}		
	}
	catch(Exception ex){}	
	%>	
</table>


</body>
</html>