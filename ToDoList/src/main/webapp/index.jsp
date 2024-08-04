<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.row{
    margin:20px;
}
.img{
    display:inline;
    width:95%;
    border:5px solid black;
    outline-style: solid;
    outline-color: gold;
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
<%@ include file="homemenu.jsp" %>
<div class="row">
        <div class="col1">
            <img  class="img" src="images/student.png">
        </div>
            <div class="col2">
                       <h3> About</h3>
        
        <p>ToDo List App is a kind of app that generally used to maintain our day-to-day tasks or list everything that we have to do, with the most important tasks at the top of the list, and the least important tasks at the bottom. It is helpful in planning our daily schedules. We can add more tasks at any time and delete a task that is completed. </p>
        <p>ToDo List App is a kind of app that generally used to maintain our day-to-day tasks or list everything that we have to do, with the most important tasks at the top of the list, and the least important tasks at the bottom. It is helpful in planning our daily schedules. We can add more tasks at any time and delete a task that is completed. </p>
               
            </div>
</div>         
</body>
</html>