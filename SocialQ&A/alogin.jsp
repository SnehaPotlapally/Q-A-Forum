
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;



try
{
if(a.equals("system")&&b.equals("system"))
{
response.sendRedirect("admin_home.jsp");
}
	
	else
	{
     	response.sendRedirect("admin.jsp?m=fail");
	}

	}
catch(Exception e1)
{
out.println(e1);
}

%>