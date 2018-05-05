<%
	IF maxpage <> "" THEN
		IF pagenum = "" THEN
			pagenum = 1
		END IF
		pagenum = CInt(pagenum)
		maxpage = CInt(maxpage)
		
		IF maxpage > 1 THEN
		
		Sub OutPageNum(i)
			dim str
			IF i = pagenum THEN
				str = "<li class='active'><a href='?page="& i &"'>"& i &"</a></li>"
			ELSE 
				str = "<li><a href='?page="& i &"'>"& i &"</a></li>"
			END IF
			response.write(str)
		END Sub
		
%>
<div style="width:100%;text-align: right;display:table">
	<ul class="pagination">
		<%
			IF pagenum > 1 THEN
				response.write("<li><a href='?page="& (pagenum-1) &"'><<</a></li>")
				OutPageNum(1)
			END IF
			
			c = pagenum - 4
			IF c < 2 THEN
				c = 2
			END IF
			FOR x = c TO pagenum-1 STEP 1
				OutPageNum(x)
			NEXT
			OutPageNum(pagenum)
			c = pagenum + 4
			IF c >= maxpage THEN
				c = maxpage-1
			END IF
			FOR x = pagenum+1 TO c STEP 1
				OutPageNum(x)
			NEXT
			
			IF pagenum < maxpage THEN 
				OutPageNum(maxpage)
				response.write("<li><a href='?page="& (pagenum+1) &"'>>></a></li>")
			END IF
		%>
	</ul>
</div>
<%
		END IF
	END IF
%>