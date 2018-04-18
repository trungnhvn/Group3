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
		
		IF ret.eof = true THEN
			GetSetting = ""
		ELSE
			GetSetting = ret("VALUE")
		END IF
	End Function
	
	Function SetSetting(sKey,sValue)
	
	
	End Function

%>