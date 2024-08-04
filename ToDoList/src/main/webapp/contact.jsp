<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPEhtml>
<html>
<head>
<meta charset="UTF-8">
<title>ToDoList-IndexPage</title>
<link rel="icon"href="images/google.png">
<link rel="stylesheet"href="css/style.css">
<style>
.p1{
padding:5px;
color:red;
background-color:yellow;
}
.p2{
padding:5px;
color:green;
background-color:yellow;
}
.p3{
 padding:5px;
 color:blue;
 background-color:yellow;
}
.p4{
padding:5px;
color:rgb(12, 193, 118);
background-color:yellow;
}

</style>
</head>
<body>
<div class="main">
    <%@ include file="homemenu.jsp"%>
    
    <div class="row">
    <div class="col1"style="width: 50%;">
        <img class="img"style="width:50%;margin-right:25px;border-radius:10px;"  src="images/contact.png"alt="">
    </div>
    <div class="col2"style="padding-top: 30px;width: 40%;">
        <h3><span style="padding:5px;color:red;background-color:#131842;">Contact</span></h3>
        <address>
        Email: todolist@gmail.com<br>
        #33-45/45/4s<br>
        Vijayawada<br>
        Krishna(Dist)<br>
        AP.<br>
        Phone: <span class="p1">99</span>
        <span class="p2">122</span>
        <span class="p3">80</span>
        <span class="p4"> 626</span><br>
        
        </address>
    </div>
</div>

</div>
</body>
</html>
