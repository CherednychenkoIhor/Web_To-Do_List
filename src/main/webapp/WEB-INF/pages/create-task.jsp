<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Task</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<%
    String error = (String) request.getAttribute("error");
    if (error != null) {
%>
<p><%=error%></p>
<%
    }
%>

<%
    Task task = (Task) request.getAttribute("task");
    if (task == null) {
%>
<form action="/create-task" method="post">
    <table>
        <tr>
            <td>
                <label for="name">Name: </label>
            </td>
            <td>
                <input type="text" id="name" name="name">
            </td>
        </tr>
        <tr>
            <td>
                <label for="priority">Priority: </label>
            </td>
            <td>
                <select id="priority" name="priority">
                    <option selected value="LOW">Low</option>
                    <option value="MEDIUM">Medium</option>
                    <option value="HIGH">High</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
<%
} else {
%>
<form id="form2" action="/create-task" method="post">
    <table>
        <tr>
            <td>
                <label for="name">Name: </label>
            </td>
            <td>
                <input type="text" id="name2" name="name" value="<%=task.getTitle()%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="priority">Priority: </label>
            </td>
            <td>
                <select id="priority2" name="priority">
                    <%
                        String priority = task.getPriority().toString();
                        if(priority.equals("LOW"))  {
                    %>
                    <option selected value="LOW">Low</option>
                    <option value="MEDIUM">Medium</option>
                    <option value="HIGH">High</option>
                    <%
                    } else if(priority.equals("MEDIUM")) {
                    %>
                    <option value="LOW">Low</option>
                    <option selected value="MEDIUM">Medium</option>
                    <option value="HIGH">High</option>
                    <%
                    } else if(priority.equals("HIGH")) {
                    %>
                    <option value="LOW">Low</option>
                    <option value="MEDIUM">Medium</option>
                    <option selected value="HIGH">High</option>
                    <%
                        }
                    %>

                </select>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
<%
    }
%>
</body>
</html>
