<%@ include file="uheader.jsp"%>

	                  <%
                                                       String message=request.getParameter("id");
                                                       
													   
													   if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Query Posted Successfully '); </script>");
                                                       }

			    %>
										<header>
												<h2>Post Your Query</h2>
											</header>
			<form method="post" action="postquery2.jsp">
	<input type="text" name="query" required>
<br>
 <input type="submit" value="Post">

</form><br><br><br><br><br>
<%@ include file="ufooter.jsp"%>