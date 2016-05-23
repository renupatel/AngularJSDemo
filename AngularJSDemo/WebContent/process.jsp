
<%  
String username = request.getParameter("t1");
String password = request.getParameter("t2");

if(username.equals("ram")&& password.equals("java")){
out.println("Valid User");
}else {
out.println("InValid User");
}

  
%>
