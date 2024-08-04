<%@page import="dao.DAO"%>
<%

String task_id=request.getParameter("task_id");
String task=request.getParameter("task");
String startdate=request.getParameter("startdate");
String starttime=request.getParameter("starttime");
String enddate=request.getParameter("enddate");
String endtime=request.getParameter("endtime");
String status=request.getParameter("status");
String submit=request.getParameter("submit");
 DAO dao=new DAO();
 if(submit.equalsIgnoreCase("update"))
 {
     if(dao.updateToDo(Integer.parseInt(task_id), task, startdate, starttime, enddate, endtime, status))
     {
         //request.getRequestDispatcher("ViewToDos.jsp").forward(request,response);
         response.sendRedirect("viewtodo.jsp?msg=UpdatedSuccessfully");
     }
     else{
         response.sendRedirect("viewtodo.jsp?msg=UpdationFailed");
     }
     
 }
 else if(submit.equalsIgnoreCase("delete"))
 {
     if(dao.deleteToDo(Integer.parseInt(task_id))){
         response.sendRedirect("viewtodo.jsp?msg=DeletedSuccessfully");
     }else{
         response.sendRedirect("viewtodo.jsp?msg=DeletionFailed");
     }
 }else{
     out.println("Wrong Button You Have Clicked");
 }
 
%>







