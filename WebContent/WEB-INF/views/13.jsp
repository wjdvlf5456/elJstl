<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="vo.UserVo"%>
<%
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>비밀번호</th>
				<th>이메일</th>
				<th>인덱스</th>
				<th>카운트</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList}" var="userVo" varStatus="status">
				<tr>
					<td>${userVo.no }</td>
					<td>${userVo.name }</td>
					<td>${userVo.password }</td>
					<td>${userVo.email }</td>
					<td>${status.index }</td>
					<td>${status.count }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>