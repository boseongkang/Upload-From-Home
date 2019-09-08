## JSP

```
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.vo.NewsVO, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	text-align: center;
	text-shadow: 6px 2px 2px silver;
}

body {
	margin: 0 auto;
	width: 60%;
}

th {
	border: 2px solid black;
}

td {
	border-bottom: 1px dotted black;
	width: 200px;
	text-align: center;
}

tr:hover {
	background-color: silver;
	font-weight: bold;
}

td:nth-child(2) {
	width: 400px;
	text-align: left;
}

#writeNews {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

a {
	text-decoration: none;
}

a:visited {
	color: gray;
}
</style>
</head>
<body>
	<%
		ArrayList<NewsVO> list = (ArrayList<NewsVO>) request.getAttribute("list");
		if (list != null) {
	%>
	<h1>뉴스 게시판</h1>
	<hr>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<%
			for (NewsVO vo : list) {
		%>
		<tr>
			<td><%=vo.getId()%></td>
			<td><a href='/mvc/news?action=read&newsid=<%=vo.getId()%>'><%=vo.getTitle()%></a></td>
			<td><%=vo.getWriter()%></td>
			<td><%=vo.getWritedate()%></td>
			<td><%=vo.getCnt()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		}
		if (request.getAttribute("msg") != null) {
	%>
	<script>
		alert("${msg}")
	</script>
	<%
		}
	%>
	<button id="writeNews" onclick="displayDiv(1)">뉴스 작성</button>
	<script>
		function displayDiv(type){
			if(type==1)
				document.getElementById("write").style.display="block";
			else if(type==2)
				document.getElementById("write").style.display="none";
			else if(type==3)
				document.getElementById("search").style.display="none";
		}
		function deleteNews(id){
			location.href="/mvc/news?action=delete&newsid="+id;
		}
	</script>
	<div id="write" style="display: none" align="center">
		<form method="post" action="/mvc/news">
			<input type="hidden" name="action" value="insert"> <input
				type="text" name="writer" placeholder="작성자 명을 입력하세요." size=48><br>
			<input type="text" name="title" placeholder="제목을 입력하세요." size=48><br>
			<textarea cols="50" rows="8" name="content" placeholder="내용을 입력하세요."></textarea>
			<br> <input type="submit" value="저장"> <input
				type="reset" value="재작성"> <input type="button"
				onclick="displayDiv(2); return false;" value="취소">
		</form>
	</div>
	<%
		if (request.getAttribute("listone") != null) {
			NewsVO one = (NewsVO) request.getAttribute("listone");
	%>
	<div id="search" align="center">
		<h2>뉴스 내용</h2>
		<form method="post" action="/mvc/news">
			<input type="hidden" name="action" value="update"> <input
				type="hidden" name="id" value=<%=one.getId()%>> <input
				type="text" name="writer" value=<%=one.getWriter()%> size=48><br>
			<input type="text" name="title" value=<%=one.getTitle()%> size=48><br>
			<textarea cols="50" rows="8" name="content"><%=one.getContent()%></textarea>
			<br> <input type="button" value="확인"
				onclick="displayDiv(3); return false;"> <input type="submit"
				value="수정"> <input type="button"
				onclick="deleteNews(<%=one.getId()%>)" value="삭제">
		</form>
	</div>
	<%
		}
	%>
</body>
</html>
```

