<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN</title>
</head>
<body>
	
	<!-- HEADER -->
	<%@ include file="/commons/admin/header.jsp" %>
	
	<!-- BODY -->
	<sitemesh:write property="body"/>
	
	<!-- FOOTER -->
	<%@ include file="/commons/admin/footer.jsp" %>
	
</body>
</html>