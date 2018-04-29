<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%
	Function GetAllMenu()
		Dim sql
		sql = "SELECT * FROM [dbo].[tblMenu] ORDER BY [ShotOder] DESC"
		
		SET GetAllMenu = SqlQuery(sql)
	End Function 

	Function GetOptionMenu()
		Dim sql 
		sql = "SELECT [MenuId],[Menu_Name] FROM [dbo].[tblMenu] ORDER BY [Menu_Name] ASC"
		
		SET GetOptionMenu = SqlQuery(sql)
	End Function 
	
	Function CreateMenu(name,paren,itype,link,shotoder)
		Dim sql 
		sql = "INSERT INTO [dbo].[tblMenu](Menu_Name,Menu_Paren,Menu_Type,Menu_Link,ShotOder)" & _
			  " VALUES(N'"& name &"',"& paren &","& itype &",N'"& link &"',"& shotoder &")"
		
		SqlQuery(sql)
	End Function 
	
	Function UpdateMenu(id,name,paren,note)
		Dim sql 
		sql = "UPDATE [dbo].[tblCategory] SET Cat_Name = N'"& name &"',Cat_Note = N'"& note &"',Cat_Paren = "& paren &" WHERE Cat_Id = " & id
		
		SqlQuery(sql)
	End Function 
	
	Function GetMenu(id)
		dim sql
		sql = "SELECT * FROM [dbo].[tblCategory] WHERE Cat_Id = " & id
		
		SET GetMenu = SqlQuery(sql)
	End Function
%>