<%
	Function GetListNews(page,limit)
		Dim sql,rownum 
		rownum = (page-1)*limit
		
		sql = "SELECT TOP " & limit & " * FROM (SELECT *,(ROW_NUMBER() OVER(ORDER BY [News_EditDate] DESC)) AS RowNum FROM [dbo].[tblNews] ) AS MyDerivedTable WHERE RowNum > " & rownum
		
		SET GetListNews = SqlQuery(sql)
	End Function

	Function GetNews(id)
		dim sql,ret
		sql = "SELECT * FROM [dbo].[tblNews] WHERE News_Id = " & id
		
		set GetSetting = SqlQuery(sql)
	End Function

%>