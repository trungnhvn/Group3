<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%

	Function GetSetting(sKey)
		dim sql,ret
		sql = "SELECT * FROM [dbo].[tblSetting] WHERE STKEY = '" & sKey & "'" 
		
		set ret = SqlQuery(sql) 
		

			GetSetting = ret("VALUE")
	End Function
	
	Function SetSetting(sKey,sValue)
	
	
	End Function

%>