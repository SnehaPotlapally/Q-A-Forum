
<%@ include file="header.jsp"%>
	<header>
												<h2>Collecting User Intrests</h2>
											</header>

<form method="post" action="tags2.jsp">
	
<select name="tags" multiple size="10">
  <option value="Politics">Politics</option>
    <option value="Technology">Technology</option>
	  <option value="Media">Media</option>
	    <option value="Entertainment">Entertainment</option>
		  <option value="Education">Education</option>
		    <option value="Fashion">Fashion</option>
			  <option value="Music">Music</option>
			    <option value="Pets & Animals">Pets & Animals</option>
				  <option value="Regional">Regional</option>
					  <option value="Sports">Sports</option>
  </select>
  <br>
<input type="submit" Value="Finish">

</form>
  
<%@ include file="footer.jsp"%>