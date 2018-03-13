<%@page import="com.cafe24.guestbook.dao.GuestbookDAO"%>
<%@page import="com.cafe24.guestbook.vo.GuestbookVO"%>
<%
	request.setCharacterEncoding( "UTF-8" );
	Long no = Long.parseLong(request.getParameter( "no" ));
	String password = request.getParameter( "password" );
	String content = request.getParameter( "content" );
	
	GuestbookVO vo = new GuestbookVO();
	vo.setNo( no );
	vo.setPassword( password );
	
	GuestbookDAO dao = new GuestbookDAO();
	dao.delete( vo );
	
	response.sendRedirect( "/guestbook/" );
%>