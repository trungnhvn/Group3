<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%

	Function GetSetting(sKey)
		dim sql,ret
		sql = "SELECT VALUE FROM [dbo].[tblSetting] WHERE STKEY = '"& sKey &"'" 
		
		set ret = SqlQuery(sql) 
		IF ret.EOF THEN
			GetSetting = ""
		ELSE
			GetSetting = ret("VALUE")
		END IF
		
		ret.close()
	End Function
	
	Function SetSetting(sKey,sValue)
		dim sql,ret
		sql = "IF NOT EXISTS (SELECT * FROM tblSetting WHERE STKEY = '" & sKey & "')"
		sql = sql & " BEGIN INSERT INTO tblSetting(STKEY,VALUE) VALUES('" & sKey & "','" & sValue & "') END "
		sql = sql & " ELSE BEGIN UPDATE tblSetting SET [VALUE] = '" & sValue & "' WHERE STKEY = '" & sKey & "' END" 
		
		set ret = SqlQuery(sql)
	End Function

%>