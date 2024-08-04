<%@page import="dao.DAO"%>
<%

String email=request.getParameter("email");
String password=request.getParameter("password");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String desig=request.getParameter("desig");
String submit=request.getParameter("submit");
 DAO dao=new DAO();
 if(submit.equalsIgnoreCase("update"))
 {
	 if(dao.updateToUser(email,password,phone,address,desig))
	 {
         response.sendRedirect("adminhome.jsp?msg=UpdatedSuccessfully");
     }
     else{
         response.sendRedirect("adminhome.jsp?msg=UpdationFailed");
     }
     
 }
 else if(submit.equalsIgnoreCase("delete"))
 {
	 if(dao.deleteToUser(email)){
         response.sendRedirect("adminhome.jsp?msg=DeletedSuccessfully");
     }else{
         response.sendRedirect("adminhome.jsp?msg=DeletionFailed");
     }
 }else{
     out.println("Wrong Button You Have Clicked");
 }
 
%>







