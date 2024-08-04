<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPEhtml>
<html>
<head>
<meta charset="UTF-8">
<title>ToDoList-IndexPage</title>
<link rel="icon"href="images/logo.png">
<style>
<style>
.row{
    margin:20px;
}
.img{
    display:inline;
    width:100%;
    border:5px solid black;
    outline-style: solid;
    outline-color:pink;
    outline-width: 5px;
    margin-bottom: 55px;
}

.row .col1,.row .col2{
    display:flexbox;
    float:left;
    width:50%;
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
    %>
    <div class="row">
    <div class="col1">
        <img class="img"src="images/todo.png"alt="">
    </div>
    <div class="col2">
        <h5><%=msg%></h5>
        <h3>Add ToDo List</h3>
        <form action="addToDo.jsp"method="post">
            <div class="mb">
                <textarea name="task"id=""placeholder="Task To Complete: "></textarea>
            </div>
            <div class="mb">
                <label for="startdate">StartDate:</label>
                <input type="date" name="startdate">
            </div>
            <div class="mb">
                <label for="starttime">StartTime:</label>
                <input type="time" name="starttime">
            </div>

            <div class="mb">
                <label for="enddate">EndDate:</label>
                <input type="date" name="enddate">
            </div>
            <div class="mb">
                <label for="endtime">EndTime:</label>
                <input type="time" name="endtime">
            </div>
            <div class="mb">
                <button type="submit">Add</button>
                <button type="reset">Cls</button>
            </div>
    </form>
    </div>
</div>
</div>
</body>
</html>
