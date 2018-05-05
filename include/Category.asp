<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%
	Function GetListCategory(page,limit)
		Dim sql,rownum 
		rownum = (page-1)*limit
		
		sql = "SELECT TOP " & limit & " * FROM (SELECT *,(ROW_NUMBER() OVER(ORDER BY [Cat_date] DESC)) AS RowNum FROM [dbo].[tblCategory] ) AS MyDerivedTable WHERE RowNum > " & rownum
		
		SET GetListCategory = SqlQuery(sql)
	End Function 
	
	Function GetCountCategory()
		Dim sql,rownum 
		
		sql = "SELECT COUNT(*) AS countline FROM [dbo].[tblCategory]" 
		
		set ret = SqlQuery(sql)
		IF ret.EOF THEN
			GetCountCategory = 0
		ELSE
			GetCountCategory = ret("countline")
		END IF
	End Function 


	Function GetAllCategory()
		Dim sql
		sql = "SELECT * FROM [dbo].[tblCategory] ORDER BY [Cat_date] DESC"
		
		SET GetAllCategory = SqlQuery(sql)
	End Function 

	Function GetOptionCategory()
		Dim sql 
		sql = "SELECT [Cat_Id],[Cat_Name] FROM [dbo].[tblCategory] ORDER BY [Cat_Name] ASC"
		
		SET GetOptionCategory = SqlQuery(sql)
	End Function 
	
	Function CreateCategory(name,paren,note)
		Dim sql 
		sql = "INSERT INTO [dbo].[tblCategory](Cat_Name,Cat_Note,Cat_Paren,User_Acount,Cat_date)" & _
			  " VALUES(N'"& name &"',N'"& note &"',"& paren &",N'"& User_Acount &"',GETDATE())"
		
		SqlQuery(sql)
	End Function 
	
	Function UpdateCategory(id,name,paren,note)
		Dim sql 
		sql = "UPDATE [dbo].[tblCategory] SET Cat_Name = N'"& name &"',Cat_Note = N'"& note &"',Cat_Paren = "& paren &" WHERE Cat_Id = " & id
		
		SqlQuery(sql)
	End Function 
	
	Function GetCategory(id)
		dim sql
		sql = "SELECT * FROM [dbo].[tblCategory] WHERE Cat_Id = " & id
		
		SET GetCategory = SqlQuery(sql)
	End Function
	
	Function DeleteCategory(id)
		dim sql
		sql = "DELETE FROM [dbo].[tblCategory] WHERE Cat_Id = " & id
		
		SqlQuery(sql)
	End Function
%>