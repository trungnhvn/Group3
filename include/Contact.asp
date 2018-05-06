<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%
	Function GetListContact(page,limit)
		Dim sql,rownum 
		rownum = (page-1)*limit
		
		sql = "SELECT TOP " & limit & " * FROM (SELECT *,(ROW_NUMBER() OVER(ORDER BY [Contact_Date] DESC)) AS RowNum FROM [dbo].[tblContact] ) AS MyDerivedTable WHERE RowNum > " & rownum
		
		SET GetListContact = SqlQuery(sql)
	End Function 
	
	Function GetCountContact()
		Dim sql,ret 
		
		sql = "SELECT COUNT(*) AS countline FROM [dbo].[tblContact]" 
		
		set ret = SqlQuery(sql)
		IF ret.EOF THEN
			GetCountContact = 0
		ELSE
			GetCountContact = ret("countline")
		END IF
	End Function 

	Function CreateContact(name,phone,email,Description)
		Dim sql
		
		name = ValueEncode(name)
		phone = ValueEncode(phone)
		email = ValueEncode(email)
		Description = ValueEncode(Description)
		
		sql = "INSERT INTO [dbo].[tblContact](Contact_Name,Contact_Phone,Contact_Email,Contact_Description,Contact_Status,Contact_Date)" & _
			  " VALUES(N'"& name &"',N'"& phone &"',N'"& email &"',N'"& Description &"',0,GETDATE())"
		
		SqlQuery(sql)
	End Function 
	
	
	
	Function UpdateContact(id,note,status)
		Dim sql 
		
		id = cint(id)
		note = ValueEncode(note)
		status = cint(status)
		
		sql = "UPDATE [dbo].[tblContact] SET Contact_Note = N'"& note &"',Contact_Status = "& status &" WHERE Contact_Id = " & id
		
		SqlQuery(sql)
	End Function 
	
	Function GetContact(id)
		dim sql
		id = cint(id)
		
		sql = "SELECT * FROM [dbo].[tblContact] WHERE Contact_Id = " & id
		
		SET GetContact = SqlQuery(sql)
	End Function
	
	Function DeleteContact(id)
		dim sql
		id = cint(id)
		
		sql = "DELETE FROM [dbo].[tblContact] WHERE Contact_Id = " & id
		
		SqlQuery(sql)
	End Function
	
	Function GetNameStatusContact(status)
		IF StrComp(status,"0") = 0 THEN 
			GetNameStatusContact = "Chờ duyệt"
		ELSEIF StrComp(status,"1") = 0 THEN
			GetNameStatusContact = "Đã duyệt"
		ELSEIF StrComp(status,"2") = 0 THEN
			GetNameStatusContact = "Đang xử lý"
		ELSE
			GetNameStatusContact = "./."
		END IF
	End Function
%>