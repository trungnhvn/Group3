<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%
	Function IsLogin()
		IF session("username") <> "" THEN
			
			
			
			
			
			
			IsLogin = TRUE
		ELSE
			IsLogin = FALSE
		END IF
	End Function
	
	Function Login(acct,pass,remember)
		IF acct <> "" THEN
			SET ACCT = GetAcctInfo(acct)
			IF ACCT <> "" THEN
			
			
			ELSE 
				Login = FALSE
			END IF
		ELSE
			Login = FALSE
		END IF
	End Function
	
	Function CreateAccount(acct)
		
	End Function
	
	Function GetAcctInfo(acct)
		dim sql,ret
		sql = "SELECT VALUE FROM [dbo].[tblUser] WHERE User_Acount = N'"& acct &"'" 
		
		set ret = SqlQuery(sql) 
		IF ret.EOF THEN
			GetAcctInfo = ""
		ELSE
			GetAcctInfo = ret
		END IF
	End Function
	
	Function ChangePass(acct,pass,newpass)
	
	
	
	End Function
	
	
	
	
	
%>