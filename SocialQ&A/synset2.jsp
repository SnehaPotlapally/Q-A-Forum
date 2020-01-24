<%@ include file="aheader.jsp"%>
	<header>
												<h2>Add Sub Category</h2>
											</header>
<h3>
<form method="post" action="synset3.jsp">
Main Category
<input type="text" name="cat" readonly value=<%=request.getParameter("cat")%>>
Sub Category
<input type="text" name="subcat" >
<br>

</h3>
<input type="submit" Value="Next">

</form>

<br><br><br><br><br>
<%@ include file="footer.jsp"%>

