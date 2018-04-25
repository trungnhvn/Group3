<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%
	Dim User_Acount,User_email,User_fullname,User_birthday,User_sex,User_power,User_date
	
	Function GetAcctInfo(acct)
		dim sql,ret
		sql = "SELECT * FROM [dbo].[tblUser] WHERE User_Acount = N'"& acct &"'" 
		
		SET GetAcctInfo = SqlQuery(sql)
	End Function
	
	Function IsLogin()
		IF session("username") <> "" THEN
			SET ACCTINFO = GetAcctInfo(session("username"))
			IF NOT ACCTINFO.EOF THEN
				
				User_Acount 	= Trim(ACCTINFO("User_Acount"))
				User_email		= ACCTINFO("User_email")
				User_fullname	= Trim(""&ACCTINFO("User_fullname"))
				User_birthday	= ACCTINFO("User_birthday")
				User_sex		= ACCTINFO("User_sex")
				User_power		= ACCTINFO("User_power")
				User_date		= ACCTINFO("User_date")
				
				IF User_fullname = "" THEN 
					User_fullname = User_Acount
				END IF
				
				
				IsLogin = TRUE
			ELSE 
				session("username") = ""
				IsLogin = FALSE
			END IF
			
			ACCTINFO.close()
		ELSE
			IsLogin = FALSE
		END IF
	End Function
	
	Function LogOut()
		session("username") = ""
	End Function
	
	Function Login(acct,pass)
		IF acct <> "" THEN
			SET ACCTINFO = GetAcctInfo(acct)
			IF NOT ACCTINFO.EOF THEN
				IF Trim(ACCTINFO("User_pass")) = pass THEN
					session("username") = acct
				
					Login = TRUE
				ELSE
					Login = FALSE
				END IF
			ELSE 
				Login = FALSE
			END IF
			
			ACCTINFO.close()
		ELSE
			Login = FALSE
		END IF
	End Function
	
	Function GetListUser(page,limit)
		Dim sql,rownum 
		rownum = (page-1)*limit
		
		sql = "SELECT TOP " & limit & " * FROM (SELECT *,(ROW_NUMBER() OVER(ORDER BY [User_Acount] DESC)) AS RowNum FROM [dbo].[tblUser] ) AS MyDerivedTable WHERE RowNum > " & rownum
		
		SET GetListUser = SqlQuery(sql)
	End Function 
	
	Function CreateAccount(acct)
		
	End Function
	
	
	Function ChangePass(acct,pass,newpass)
	
	
	
	End Function
	
	
	
	
	
%>