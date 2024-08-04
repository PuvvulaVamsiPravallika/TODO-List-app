<%@page import="dto.User"%>
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
    <%@ include file="adminmenu.jsp"%>
    <%
    String msg=request.getParameter("msg");
    if(msg==null)
        msg="";
    DAO dao=new DAO();
    ArrayList<User> users=dao.getAllUsers();
    %>
    <div class="row">
<table id="customers">
  <tr>
    <th>Email</th>
    <th>Password</th>
    <th>Phone</th>
    <th>Address</th>
    <th>Desig</th>
  </tr>
  <%
        for(User user:users)
        {
  %>
        <form action="modifyuser.jsp" method="post">
        <tr>
            <td>
                <input type="hidden" name="email" value="<%=user.getEmail()%>">
                <%=user.getEmail()%>
            </td>
            <td>
                <textarea name="password"><%=user.getPassword()%></textarea>
            </td>
            <td>
                <input name="phone" value="<%=user.getPhone()%>">
            </td>
            <td>
                <textarea name="address"><%=user.getAddress()%></textarea>
            </td>
            
            <td>
                <input name="desig" value="<%=user.getDesig()%>">
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
</html>
