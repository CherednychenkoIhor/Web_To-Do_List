<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<h3>ERROR:</h3>
<%
    if(request.getParameter("id") == null)  {
%>
<p>Page Not Found!!!</p>
<%
} else {
%>
<p>Task with ID '<%=request.getParameter("id")%>' not found in To-Do List!</p>
<p>URL: <%=request.getAttribute("javax.servlet.forward.request_uri")%></p>
<%
    }
%>
</body>
</html>
