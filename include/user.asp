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
	
	Function LogOut()
		session("username") = ""
	End Function
	
	Function GetAcctInfo(acct)
		dim sql,ret
		sql = "SELECT * FROM [dbo].[tblUser] WHERE User_Acount = N'"& acct &"'" 
		
		SET GetAcctInfo = SqlQuery(sql)
	End Function
	
	Function Login(acct,pass)
		IF acct <> "" THEN
			SET ACCTINFO = GetAcctInfo(acct)
			IF NOT ACCTINFO.EOF THEN
				IF ACCTINFO("User_pass") = pass THEN
					session("username") = acct
				
					Login = TRUE
				ELSE
					Login = FALSE
				END IF
			ELSE 
				Login = FALSE
			END IF
		ELSE
			Login = FALSE
		END IF
	End Function
	
	Function CreateAccount(acct)
		
	End Function
	
	
	Function ChangePass(acct,pass,newpass)
	
	
	
	End Function
	
	
	
	
	
%>