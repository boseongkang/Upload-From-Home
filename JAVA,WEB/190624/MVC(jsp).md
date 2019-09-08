## MVC(jsp)

```
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.vo.MeetingVO, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	td{
		border-bottom : 1px dotted black;
	}
	tr:hover{
		background-color: yellow;
		font-weight:bold; 
	}
	td:nth-child(3){
		width:400px;
	}
</style>
</head>
<body>
	<%
		ArrayList<MeetingVO> list = (ArrayList<MeetingVO>) request.getAttribute("list");
		if (list != null) {
	%>
	<h2>방명록 글 리스트</h2><hr>
	<table>
		<%
			for (MeetingVO vo : list) {
		%>
		<tr>
			<td><%=vo.getName()%></td>
			<td><%=vo.getTitle()%></td>
			<td><%=vo.getMeetingDate()%></td>
			<td><a href='/mvc/meeting?id=<%=vo.getId()%>'><img src="/mvc/images/garbage.jpeg" width = "30"></a></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		}else{
	%> 
	<h2>${msg}</h2>
	<%
		} 
	%>
	<hr>
	<a href='/mvc/htmlexam/meetingForm.html'>방명록 홈 화면으로 가기</a>
	<a href='${header.referer}'>뒤로 가기</a>
</body>
</html>
```

 