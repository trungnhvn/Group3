<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%
	Function GetListPhoto(page,limit)
		Dim sql,rownum 
		rownum = (page-1)*limit
		
		sql = "SELECT TOP " & limit & " * FROM (SELECT *,(ROW_NUMBER() OVER(ORDER BY [ShotOder] DESC)) AS RowNum FROM [dbo].[tblPhoto] ) AS MyDerivedTable WHERE RowNum > " & rownum
		
		SET GetListPhoto = SqlQuery(sql)
	End Function 
	
	Function GetCountPhoto()
		Dim sql,ret 
		
		sql = "SELECT COUNT(*) AS countline FROM [dbo].[tblPhoto]" 
		
		set ret = SqlQuery(sql)
		IF ret.EOF THEN
			GetCountPhoto = 0
		ELSE
			GetCountPhoto = ret("countline")
		END IF
	End Function 

	Function CreatePhoto(name,Image,Paren,Description,link,ShotOder)
		Dim sql
		
		IF ShotOder = "" THEN 
			ShotOder = 0
		END IF
		
		sql = "INSERT INTO [dbo].[tblPhoto](Photo_Name,Photo_Description,Photo_Url,Photo_Link,Photo_Group,Photo_Date,ShotOder)" & _
			  " VALUES(N'"& name &"',N'"& Description &"',N'"& Image &"',N'"& link &"',N'"& Paren &"',GETDATE(),"& ShotOder &")"
		
		SqlQuery(sql)
	End Function 
	
	Function UpdatePhoto(id,name,Image,Paren,Description,link,ShotOder)
		Dim sql 
		
		IF ShotOder = "" THEN 
			ShotOder = 0
		END IF
		
		sql = "UPDATE [dbo].[tblPhoto] SET Photo_Name = N'"& name &"',Photo_Description = N'"& Description &"',Photo_Url = N'"& Image &"',Photo_Link = N'"& link &"',Photo_Group = N'"& Paren &"',ShotOder = "& ShotOder &" WHERE Cat_Id = " & id
		
		SqlQuery(sql)
	End Function 
	
	Function GetPhoto(id)
		dim sql
		sql = "SELECT * FROM [dbo].[tblPhoto] WHERE Photo_Id = " & id
		
		SET GetPhoto = SqlQuery(sql)
	End Function
	
	Function DeletePhoto(id)
		dim sql
		sql = "DELETE FROM [dbo].[tblPhoto] WHERE Photo_Id = " & id
		
		SqlQuery(sql)
	End Function
	
%>