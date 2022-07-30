<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read existing task</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<%
    Task task = (Task) request.getAttribute("task");
%>
<p>Id: <%=task.getId()%></p>
<p>Name: <%=task.getTitle()%></p>
<%
    String priority = task.getPriority().toString();
    if(priority.equals("LOW"))  {
%>
<p>Priority: Low</p>
<%
} else if(priority.equals("MEDIUM")) {
%>
<p>Priority: Medium</p>
<%
} else if(priority.equals("HIGH")) {
%>
<p>Priority: High</p>
<%
    }
%>
</body>
</html>
