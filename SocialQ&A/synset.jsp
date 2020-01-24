<%@ include file="aheader.jsp"%>
<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Category Synset Added Successfully !!')</script>");
	}
 %>
	
	<header>
												<h2>Select Main Category</h2>
											</header>
<form method="post" action="synset2.jsp">
	<select name="cat">
	
	<option value="Movies">Movies
	

</select><br>
<input type="submit" Value="Next">

</form>

<br><br><br><br><br>
<%@ include file="footer.jsp"%>

