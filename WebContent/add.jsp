<%@page import="com.cafe24.guestbook.dao.GuestbookDAO"%>
<%@page import="com.cafe24.guestbook.vo.GuestbookVO"%>
<%
	request.setCharacterEncoding( "UTF-8" );
	String name = request.getParameter( "name" );
	String password = request.getParameter( "password" );
	String content = request.getParameter( "content" );
	
	GuestbookVO vo = new GuestbookVO();
	vo.setName( name );
	vo.setPassword( password );
	vo.setContent( content );
	
	GuestbookDAO dao = new GuestbookDAO();
	dao.create( vo );
	
	response.sendRedirect( "/guestbook/" );
%>