<%
    String email=(String)session.getAttribute("email");
%>
<!DOCTYPEhtml>
<html>
<head>
<meta charset="UTF-8">
<title>ToDoList-IndexPage</title>
<link rel="icon"href="images/logo.png">
<link rel="stylesheet"href="css/style.css">
<style>
body{
    background-color:gray;
  }
.navbar{
    overflow:hidden;
    background-color: white;
  }
.navbar a {
  float: left;
  color:blue;
  text-align:center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.navbar a:hover {
  background-color:red;
  color: white;
}

/* Add a color to the active/current link */
.navbar a.active {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
 <div class="navbar">
         <a href="viewtodo.jsp">View ToDo</a>
         <a href="userhome.jsp">Add ToDo</a>
       <a href="logout.jsp">Logout</a>
        <a style="padding-left: 600px">
                <span style="color:orange;">Active User</span>&nbsp;:&nbsp;<%=email%>
        </a>   
 </div>
</body>
</html>
        
