<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit existing task</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<form action="/edit-task" method="post">

    <%
        Task task = (Task) request.getAttribute("task");
    %>

    <table>
        <tr>
            <td>
                <label for="id">Id: </label>
            </td>
            <td>
                <input type="text" id="id" name="id" value="<%=task.getId()%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="name">Name: </label>
            </td>
            <td>
                <input type="text" id="name" name="name" value="<%=task.getTitle()%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="priority">Priority: </label>
            </td>
            <td>
                <select id="priority" name="priority">
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
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
