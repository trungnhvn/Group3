<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%
	Function GetListCategory(page,limit)
		Dim sql,rownum 
		rownum = (page-1)*limit
		
		sql = "SELECT TOP " & limit & " * FROM (SELECT *,(ROW_NUMBER() OVER(ORDER BY [User_Acount] DESC)) AS RowNum FROM [dbo].[tblUser] ) AS MyDerivedTable WHERE RowNum > " & rownum
		
		SET GetListUser = SqlQuery(sql)
	End Function 







%>