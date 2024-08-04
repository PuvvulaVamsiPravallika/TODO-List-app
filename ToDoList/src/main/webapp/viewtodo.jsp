<%@page import="dto.Task"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToDoList-IndexPage</title>
<link rel="icon" href="images/logo.png">
<style>
#customers{
    font-family: Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers th,#customers td{
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even)
{
    background-color: lightgrey;
}

#customers tr:hover{
    background-color:grey;
}

#customers th{
    background-color: #04AA6D;
    text-align:left;
    padding:15px;
    color:white;
}
</style>
</head>
<body>
<div class="main">
    <%@ include file="usermenu.jsp"%>
    <%
    String msg=request.getParameter("msg");
        if(msg==null)
            msg="";
        DAO dao=new DAO();
        ArrayList<Task> tasksList=dao.getAllTasks(email);
    %>
    <div class="row">
        <%=msg%>
<table id="customers">
  <tr>
    <th>Task_id</th>
    <th>Task</th>
    <th>StartDate</th>
    <th>StartTime</th>
    <th>EndDate</th>
    <th>EndTime</th>
    <th>Status</th>
    <th>Actions</th>
  </tr>
  <%
        for(Task task:tasksList)
        {
  %>
        <form action="modify.jsp" method="post">
        <tr>
            <td>
                <input type="hidden" name="task_id" value="<%=task.getTask_id()%>">
                <%=task.getTask_id()%>
            </td>
            <td>
                <textarea name="task"><%=task.getTask()%></textarea>
            </td>
            <td>
                <input name="startdate" value="<%=task.getStartdate()%>">
            </td>
            <td>
                <input name="starttime" value="<%=task.getStarttime()%>">
            </td>
            
            <td>
                <input name="enddate" value="<%=task.getEnddate()%>">
            </td>
            <td>
                <input name="endtime" value="<%=task.getEndtime()%>">
            </td>
            <td>
                <input name="status" value="<%=task.getStatus()%>">
            </td>
            <td>
                <button type="submit" name="submit" value="update">Update</button>
                <button type="submit" name="submit" value="delete">Delete</button>
            </td>
        </tr>
        </form>
  <%
        }
  %>
</table>
        
    </div>
    </div>
</body>
