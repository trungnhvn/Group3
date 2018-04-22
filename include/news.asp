<%
	Function GetListNews()

	End Function

	Function GetNews(id)
		dim sql,ret
		sql = "SELECT * FROM [dbo].[News] WHERE Id = " & id
		
		set GetSetting = SqlQuery(sql)
	End Function

%>