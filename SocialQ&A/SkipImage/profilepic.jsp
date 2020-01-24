
<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%@ include file="header.jsp"%>

<%
String email=request.getParameter("id");
session.setAttribute("email",email);
%>
<br><br><br>

<tr>
<td><font size="+2" color="#37c0fb"><b>Upload your Profile Pic</font>

</tr>
</table>

 <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null && id.equalsIgnoreCase("succ"))
                                                       {

													         out.println(" <font	color=red><b>Picture Stored Successfully !!</font><br>");

													   }
%>
		
<form  action="upload2.jsp" ENCTYPE="multipart/form-data" method="post" >   
	<table width="60%" align="center">
<table  width="60%" align="center">
  <tr>
	<td><br><input type="file" name="pic" accept="image/*"></td>
  </tr>
  <tr>
	<td><br><input type="submit" value="Upload"></td>
  </tr>
  </table>

</form>







<form  action="skip.jsp" ENCTYPE="multipart/form-data" method="post" >   
	<table width="60%" align="center">
<table  width="60%" align="center">
  <tr>
	<td><br><input type="hidden" value="E:/Apache Tomcat/user.png" name="pic" accept="image/*"></td>
  </tr>
  <tr>
	<td><br><input type="submit" value="Skip"></td>
  </tr>
  </table>

</form>



<br><br><br><br><br>
<%@ include file="footer.jsp"%>