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
	
	Function DeleteUser(acct)
		dim sql,ret
		sql = "DELETE FROM [dbo].[tblUser] WHERE User_Acount = N'"& acct &"'" 
		
		SqlQuery(sql)
	End Function
	
	Function IsLogin()
		IF session("username") <> "" THEN
			SET ACCTINFO = GetAcctInfo(session("username"))
			IF NOT ACCTINFO.EOF THEN
				
				User_Acount 	= Trim(ACCTINFO("User_Acount"))
				User_pass		= ACCTINFO("User_pass")
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
	
	Function GetCountUser()
		Dim sql,ret 
		
		sql = "SELECT COUNT(*) AS countline FROM [dbo].[tblUser]" 
		
		set ret = SqlQuery(sql)
		IF ret.EOF THEN
			GetCountUser = 0
		ELSE
			GetCountUser = ret("countline")
		END IF
	End Function 
	
	Function CreateAccount(acct,pass,email,fullname,birthday,sex,power)
		Dim sql
		sql = "INSERT INTO [dbo].[tblUser](User_Acount,User_pass,User_email,User_fullname,User_birthday,User_sex,User_power,User_date)" & _
			  " VALUES(N'"& acct &"',N'"& pass&"',N'"& email &"',N'"& fullname &"',N'"& birthday &"',"& sex &",N'"& power &"',GETDATE())"
		
		SqlQuery(sql)
	End Function
	
	
	Function ChangePass(acct,pass,newpass)
		Dim sql
		sql = "UPDATE [dbo].[tblUser] SET User_pass = N'"& newpass &"' WHERE User_Acount = N'"& acct &"' AND User_pass = N'"& pass &"'"
		
		SqlQuery(sql)
	End Function
	
	Function NewPass(acct,pass)
		Dim sql
		sql = "UPDATE [dbo].[tblUser] SET User_pass = N'"& pass &"' WHERE User_Acount = N'"& acct &"'"
		
		SqlQuery(sql)
	End Function
	
	Function UpdateUser(acct,fullname,email,birthday,sex,power)
		Dim sql
		sql = "UPDATE [dbo].[tblUser] SET User_email = N'"& email &"',User_fullname = N'"& fullname &"',User_birthday = N'"& birthday &"',User_sex = "& sex &",User_power = N'"& power &"' WHERE User_Acount = N'"& acct &"'"
		
		SqlQuery(sql)
	End Function
	
	Function UpdateUserInfo(acct,fullname,email,birthday,sex)
		Dim sql
		sql = "UPDATE [dbo].[tblUser] SET User_email = N'"& email &"',User_fullname = N'"& fullname &"',User_birthday = N'"& birthday &"',User_sex = "& sex &" WHERE User_Acount = N'"& acct &"'"
		
		SqlQuery(sql)
	End Function
	
	
	
%>